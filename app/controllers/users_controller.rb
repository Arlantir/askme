class UsersController < ApplicationController

  before_action :load_user, except: %i[index create new]
  before_action :authorize_user, except: %i[index new create show]

  def index
    @users = User.sorted
    @hashtags = HashTag.having_questions
  end

  def new
    redirect_to root_url, alert: 'Вы уже залогинены' if current_user.present?
    @user = User.new
  end

  def create
    redirect_to root_url, alert: 'Вы уже залогинены' if current_user.present?

    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: 'Пользователь успешно зарегестрирован!'
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user), notice: 'Данные обновлены'
    else
      render 'edit'
    end
  end

  def show
    @questions = @user.questions.order(created_at: :desc)

    @questions_count        = @questions.count
    @questions_answer_blank = @questions.count { |question| question.answer.blank? }
    @questions_answer       = @questions_count - @questions_answer_blank

    @new_question = @user.questions.build
  end

  def destroy
    @user.destroy
    redirect_to root_path, notice: "Пользователь @#{@user.username} - удален!"
  end

  private
  def authorize_user
    reject_user unless @user == current_user
  end

  def load_user
    @user ||= User.find params[:id]
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation,
                                 :name, :username, :avatar_url, :color)
  end
end
