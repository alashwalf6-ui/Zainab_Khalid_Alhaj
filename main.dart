// ملف: solution1_simple.dart

void main() {

  print("\n الطالب والدرجة");
  print("-" * 30);


  String name = "محمد";
  double grade = 80.0;


  double finalGrade = grade + 5.0;
  if (finalGrade > 0) {
    print(" ناجاح");
  } else {
    print(" راسب");
  }
  print("الطالب: $name, الدرجة: $finalGrade");



  print("\n قائمة الطلاب");
  print("-" * 30);
  List students = [];
  void addStudent(name, age, grade) {
    students.add({
      'name': name ?? 'غير معروف',
      'age': age ?? 0,
      'grade': grade ?? 0.0,
    });
  }
  addStudent('أحمد', 20, 85);
  addStudent('سارة', 22, 92);
  addStudent('خالد', 19, 65);
  addStudent('نورة', 21, 78);
  addStudent('علي', 20, 55);
  addStudent('منى', 23, 88);

  print("المتفوقين:");
  for (var s in students) {
    if (s['grade'] > 70) {
      print("  - ${s['name']} (${s['grade']})");
    }
  }



  print("\n دالة القسمة");
  print("-" * 30);

  divide(num1, num2) {
    try {
      if (num2 == 0) throw "لا تقسم على صفر!";
      return num1 / num2;
    } catch (e) {
      print("خطأ : $e");
      return 0;
    }
  }
  print("10 ÷ 2 = ${divide(10, 2)}");
  print("5 ÷ 0 = ${divide(5, 0)}");




  print("\n Null Safety");
  print("-" * 30);

  String? x;
  print("الاسم: ${x ?? 'بدون اسم'}");

  int? y;
  print("الرقم: ${y ?? 0}");


}