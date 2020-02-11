class UsersController < ApplicationController
  def index
    # Мы создаем массив из двух болванок пользователей. Для создания фейковой
    # модели мы просто вызываем метод User.new, который создает модель, не
    # записывая её в базу.
    @users = [
      User.new(
        id: 1,
        name: 'Vadim',
        username: 'installero',
        avatar_url: 'https://secure.gravatar.com/avatar/' \
          '71269686e0f757ddb4f73614f43ae445?s=100'
      ),
      User.new(id: 2, name: 'Misha', username: 'aristofun')
    ]
  end

  def new; end

  def edit; end

  def show
    @user = User.new(
      name: 'Denis',
      username: 'Arlantir',
      avatar_url: 'http://www.gravatar.com/avatar/?d=retro&s=100'
    )

    @questions = [
      Question.new(text: 'Как дела?', answer: 'Типа ответ', created_at: Date.parse('08.02.2020')),
      Question.new(text: 'В чем смысл жизни?', answer: 'Типа ответ', created_at: Date.parse('08.02.2020')),
      Question.new(text: 'Как дела?', answer: 'Типа ответ', created_at: Date.parse('08.02.2020')),
      Question.new(text: 'В чем смысл жизнrererreи?', created_at: Date.parse('08.02.2020')),
      Question.new(text: 'В чем смысл жизни?', answer: 'Типа ответ', created_at: Date.parse('08.02.2020')),
      Question.new(text: 'В чем смысл жизнrererreи?', created_at: Date.parse('08.02.2020'))
    ]

    @questions_count = 0
    @questions_answer = 0
    @questions_answer_blank = 0

    @questions_count        = @questions.count
    @questions_answer       = @questions.count { |question| question.answer.present? }
    @questions_answer_blank = @questions.count { |question| question.answer.blank? }

    @new_question = Question.new
  end
end
