void main() {
  // VARIABLES
  int age = 20;
  String name = "Lohitha";
  double marks = 85.5;
  print("Name: $name, Age: $age, Marks: $marks");
  // FUNCTION CALL
  greet(name);
  // CONDITIONAL
  if (marks >= 50) {
    print("Result: Pass");
  } else {
    print("Result: Fail");
  }
  // LOOP
  print("Counting 1 to 5:");
  for (int i = 1; i <= 5; i++) {
    print(i);
  }
  // CLASS & OBJECT
  Student s = Student("Aarav", 22);
  s.display();
}
// FUNCTION
void greet(String user) {
  print("Hello, $user! Welcome to Dart.");
}
// CLASS
class Student {
  String name;
  int age;
  Student(this.name, this.age);
  void display() {
    print("Student Name: $name, Age: $age");
  }
}
