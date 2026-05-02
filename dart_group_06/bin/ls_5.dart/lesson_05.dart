import 'book.dart';
import 'library.dart';

void main() {
  // 1. Обычный конструктор
  Book book1 = Book('Harry Potter', 'J.K. Rowling');

  // 2. Именованный конструктор
  Book book2 = Book.withRating(
      'Sherlock Holmes', 'Arthur Conan Doyle', 9.2);

  // 3. Через сеттер
  Book book3 = Book('The Hobbit', 'J.R.R. Tolkien');
  book3.rating = 8.7;

  // Библиотека
  Library cityLib = Library('City Library');

  // Добавление книг
  cityLib.addBook(book1);
  cityLib.addBook(book2);
  cityLib.addBook(book3);

  // Вывод
  cityLib.showBooks();

  print('Total books in library: ${cityLib.totalBooks}');
}