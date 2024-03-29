# Постановка задачи
> ## Задача книги
> Проверяет, что вы обладаете минимальными знаниями SQL или способны быстро освоить базовые концепции.
> 
> ### Описание задачи
> Предметная область — издательство. Спроектировать структуру реляционной БД, содержащую следующие сущности:
> 
> - Книги: ISBN, aвторы, название, количество страниц, жанр, дата публикации
> - Авторы: Имя, Фамилия
> 
> #### Требования к реализации модели предметной области
> - книга может быть написана несколькими авторами
> - книга может относиться к нескольким жанрам.
> 
> ### Требования к выполненному заданию
> - сделан отдельный SQL-скрипт с тестовым набором данных
> - сделан отдельный SQL-скрипт который выводит название книги и ее авторов для жанра “Фантастика”
> - сделан отдельный SQL-скрипт который выводит автора, который написал больше всего книг
> - код будет запускаться на MySQL версии не ниже 5.6

# Описание содержимого решения задачи
## Основные файлы решения
Скрипты внесены в структуру БД в виде *представлений*
- ***task03_books.sql*** файл структуры БД без данных
- ***task03_books_populated.sql*** файл структуры БД с данными

## Исходные данные
Сформированные списки в текстовых файлах books.txt, authors.txt и genres.txt, разделённые переносом строки

## Рабочие директории
Директории для хранения скриптов и промежуточных результатов форматирования: authors, books, genres, author_book, book_genre
- Примечание: Если в папках **authors, books, genres** отсутствует файл *filename*_rdy.txt, то следует запустить скрипт находящийся в данной директории(в директориях **author_book, book_genre** файлы генерируются основным скриптом)

## Основной скрипт генерации файла наполнения БД ***Database_generate_script.php***
- генерирует ***populate.sql*** файл наполнения БД данными

## А так же файл разметки данного описания - ***readme.md***