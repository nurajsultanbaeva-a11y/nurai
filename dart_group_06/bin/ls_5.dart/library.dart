import 'book.dart';
class Library {
  String name;
  List<Book> _books = [];

  // Конструктор
  Library(this.name);

  // Добавление книги
  void addBook(Book b) {
    _books.add(b);
  }

  // Вывод списка книг
  void showBooks() {
    print('Library: $name');
    print('Books list:');

    for (int i = 0; i < _books.length; i++) {
      print('${i + 1}. ${_books[i].title}');
    }
  }

  int get totalBooks => _books.length;
}
