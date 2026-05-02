int totalCalls = 0;

// 1️⃣ greet()
void greet() {
  totalCalls++;
  print("Hello! Welcome to Dart programming!");
}

// 2️⃣ introduce()
void introduce(String name, int age) {
  totalCalls++;
  print("My name is $name and I am $age years old.");
}

// 3️⃣ addNumbers()
int addNumbers(int a, int b) {
  totalCalls++;
  return a + b;
}

void main() {
  // greet()
  greet();
  greet();
  greet();

  // introduce()
  introduce("Alex", 25);
  introduce("Maria", 30);
  introduce("John", 20);

  // addNumbers()
  int result = addNumbers(5, 8);
  print("Sum of 5 and 8 is $result.");

  print("Total function calls: $totalCalls");
}