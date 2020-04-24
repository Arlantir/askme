# Приложение «Спроси меня»

Клон приложения **ASKME** на **rails 6.0.2.1** и **ruby 2.6.5.**

**Демо**
 
[https://megoask.herokuapp.com/](https://megoask.herokuapp.com/)

**Установка**

1. Скопировать/клонировать проект;
2. Установить и настроить базу данных (в проекте по умолчанию используется [SQLite][1])
3. Установить [NodeJS][2], [Yarn][3]
 
**Настройка**

1. Установите все зависимости командой:

```
bundle install
```

2. Сделайте:
   
```
cp databese.yml.example databese.yml
```

3. Выполните команды:

```
rails db:create db:migrate
```

4. Сделайте:
   
```
cp .env.example .env
```
  
  И пропишите переменные окружения в .env файле:
```
RECAPTCHA_ASKME_PUBLIC_KEY="Ваш апи ключ"
RECAPTCHA_ASKME_PRIVATE_KEY="Ваш апи ключ"
``` 

В приложении используется Рекапча версии 2, [получение апи ключей][4].

5. Запуск приложения:
 
```
 rails server
```

6. В браузере перейти по адресу:

```
localhost:3000
```




[1]: https://www.sqlite.org/index.html
[2]: https://nodejs.org/en/
[3]: https://yarnpkg.com/
[4]: https://www.google.com/recaptcha