# Приложение «Спроси меня»

Клон приложения **ASKME**

**Демо**
 
 [https://megoask.herokuapp.com/](https://megoask.herokuapp.com/)
 
 **Установка**
 
 1. Скопировать/клонировать проект;
 2. Установить и настроить базу данных (в проекте по умолчанию используется [SQLite][1])
 3. Установить [Redis][2], [NodeJS][3], [Yarn][4]
 
  **Настройка**
  
 1.Установите все зависимости командой
 
 `bundle install`
 
 2.Перейдите в папку проекта и выполните команды:
  
 `rails db:create`
 
 `rails db:migrate`
 
 3.Запустите приложени командой `rails server`
  
 4.В браузере перейти по адресу `localhost:3000`

 
 
 
  [1]: https://www.sqlite.org/index.html
  [2]: https://redis.io/
  [3]: https://nodejs.org/en/
  [4]: https://yarnpkg.com/