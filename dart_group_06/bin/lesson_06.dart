// ===== ENUM =====
enum Subject { math, physics, english, history }

// ===== PERSON =====
class Person {
  String fullName;
  int age;
  bool isMarried;

  Person(this.fullName, this.age, this.isMarried);

  void introduce() {
    print(
        'Hi! My name is $fullName. I am $age years old. Married: ${isMarried ? 'Yes' : 'No'}.');
  }
}

// ===== STUDENT =====
class Student extends Person {
  Map<Subject, double> marks;

  Student(String fullName, int age, bool isMarried, this.marks)
      : super(fullName, age, isMarried);

  void showMarks() {
    print('Student: $fullName');

    for (var entry in marks.entries) {
      print('${entry.key.name}: ${entry.value}');
    }
  }

  double calculateAverage() {
    double sum = 0;

    for (var value in marks.values) {
      sum += value;
    }

    return sum / marks.length;
  }

  @override
  void introduce() {
    super.introduce();
    print('Average mark: ${calculateAverage()}');
  }
}

// ===== TEACHER =====
class Teacher extends Person {
  int experience;

  static double _baseSalary = 50000;

  Teacher(String fullName, int age, bool isMarried, this.experience)
      : super(fullName, age, isMarried);

  double calculateSalary() {
    double salary = _baseSalary;

    // Повышение за стаж (с 4-го года)
    for (int i = 4; i <= experience; i++) {
      salary += salary * 0.05;
    }

    // Бонус за брак
    if (isMarried) {
      salary += 5000;
    }

    return salary;
  }

  @override
  void introduce() {
    super.introduce();
    print('Experience: $experience years.');
    print('Salary: ${calculateSalary()}');
  }
}

// ===== MAIN =====
void main() {
  // Teacher
  Teacher teacher = Teacher('John Brown', 40, true, 10);
  teacher.introduce();

  print('------------------');

  // Student 1
  Student student1 = Student('Adam White', 17, false, {
    Subject.math: 90,
    Subject.physics: 85,
    Subject.english: 92,
    Subject.history: 89,
  });

  student1.introduce();
  student1.showMarks();

  print('------------------');

  // Student 2
  Student student2 = Student('Alice Green', 18, false, {
    Subject.math: 88,
    Subject.physics: 90,
    Subject.english: 95,
    Subject.history: 91,
  });

  student2.introduce();
  student2.showMarks();
}