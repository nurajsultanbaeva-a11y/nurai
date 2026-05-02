import 'school.dart';

void main() {
  Teacher teacher = Teacher('John Brown', 40, true, 10);
  teacher.introduce();

  print('------------------');

  Student student1 = Student('Adam Whitt', 17, false, {
    Subject.math: 90,
    Subject.physics: 85,
    Subject.english: 92,
    Subject.history: 89,
  });

  student1.introduce();
  student1.showMarks();
}