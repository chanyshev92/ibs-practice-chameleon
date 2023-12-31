# language: ru

# Тестовые данные:

Функция: Проверки Ui

  Сценарий: Проверка отображения элементов на странице "Товары"
    * страница "Товары" загружена
    * ожидается появление поля "Таблица" в течение "5" секунд
    * ожидается появление элементов коллекции "Строки таблицы" в течение "2" секунд
    * кнопка "Добавить" активна

  Структура сценария: Добавление товара
    * страница "Товары" загружена
    * выполнено нажатие на "Добавить"
    * следующие поля видимы:
      | field                   |
      | Поле формы Наименование |
      | Поле формы Тип          |
      | Чек-бокс Экзотический   |
    * кнопка "Сохранить" активна
    * заполняются поля:
      | field                   | value          |
      | Поле формы Наименование | <Наименование> |
      | Поле формы Тип          | <Тип>          |
      | Чек-бокс Экзотический   | <Экзотический> |
    * выполнено нажатие на "Сохранить"
    * страница "Товары" загружена
    * выбран элемент коллекции "Строки таблицы" с параметрами:
      | field                | operator | value          |
      | Столбец Наименование | равно    | <Наименование> |
      | Столбец Тип          | равно    | <Тип>          |
      | Столбец Экзотический | равно    | <Экзотический> |

    Примеры:
      | Наименование | Тип   | Экзотический |
      | Ананас       | Фрукт | true         |