# language: ru

# Тестовые данные:

Функция: Проверки БД

  Структура сценария:Проверка добавления продукта с валидными данными в таблицу food

    * к БД выполнено подключение "H2" с параметрами:
      | field    | value |
      | User     | user  |
      | Password | pass  |
    * к БД выполняется запрос "Вставить продукт" c параметрами:
      | field        | value          |
      | Наименование | <Наименование> |
      | Тип          | <Тип>          |
      | Экзотический | <Экзотический> |
    * из БД выбирается строка запросом "Вывести вставленный продукт" c параметрами:
      | field        | value          |
      | Наименование | <Наименование> |
      | Тип          | <Тип>          |
      | Экзотический | <Экзотический> |
    * к БД выполняется запрос "Удалить продукт" c параметрами:
      | field        | value          |
      | Наименование | <Наименование> |
      | Тип          | <Тип>          |
      | Экзотический | <Экзотический> |
    * закрыто подключение к БД "H2"
    Примеры:
      | Наименование | Тип   | Экзотический |
      | Ананас       | FRUIT | 1            |
