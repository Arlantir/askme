module ApplicationHelper
  def user_avatar(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      asset_path 'avatar.jpg'
    end
  end

  def inclination(number, vopros, voprosa, voprosov)
    ostatok = number % 10
    ostatok2 = number % 100

    if number >= 11 && number <= 14 || ostatok2 >= 11 && ostatok2 <= 14
      return voprosov
    end

    if ostatok == 1
      return vopros
    elsif ostatok >= 2 && ostatok <= 4
      return voprosa
    elsif (ostatok >= 5 && ostatok <= 9) || ostatok == 0
      return voprosov
    end
  end
end
