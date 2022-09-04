import 'dart:io';

void main() {
  String? name = stdin.readLineSync();
  String f=name!;
  print("Hello, $f");
  Student s = Student();
  s.me = 'haydla';
  print(s.me);
  s.nr = 14;
  print(s.nr);
}

class Student {
  String? f;
  late int d;
  set me(String m) {
    f = m;
  }

  String get me => f!.contains('la') ? 'la in $f' : 'la not in $f';

  set nr(int n) {
    d = n * 10;
  }

  int get nr => d;
}
