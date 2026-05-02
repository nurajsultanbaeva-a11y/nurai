class Book {
  String _title;
  String _author;
  double _rating = 0.0;

  // Обычный конструктор
  Book(this._title, this._author);

  // Именованный конструктор
  Book.withRating(this._title, this._author, double rating) {
    this.rating = rating;
  }

  // Геттеры
  String get title => _title;
  String get author => _author;
  double get rating => _rating;

  // Сеттер с проверкой
  set rating(double value) {
    if (value >= 0 && value <= 10) {
      _rating = value;
    } else {
      print('Ошибка: рейтинг должен быть от 0 до 10');
    }
  }

  // Вывод информации
  void displayInfo() {
    print('Title: $_title');
    print('Author: $_author');
    print('Rating: $_rating');
  }
}
