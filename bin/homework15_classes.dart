// TOPIC: CLASSES - PRACTICE
import 'dart:math';

void main() {
  // Circle a = Circle(radius: 25.5, color: 'red');
  // a.info();

  // Student b = Student(name: 'Tom', age: 35, averageGrade: 3.6);
  // b.info();

  // Car c = Car('BMW', 'X6', 2021);
  // print(c.getInfo());

  // Book d = Book('My Money', 'Nick Darby', 2018);
  // print(d.getInfo());

  // Rectangle e = Rectangle(width: 10, height: 5);
  // e.result();
  // e.area();
  // e.perimeter();

  BankAccount f = BankAccount('USD12345678', 1000, 'Nick Darby');
  f.info();
  print(f.deposit(200));
  print(f.withdraw(1300));

  // Product g = Product('Table', 90.9, 20);
  // g.info();
  // g.totalPrice();

  // Employee r = Employee(name: 'Jon', profession: 'Engineer', salary: 500);
  // print(r.info());
  // r.moreMoney(15);

  // Triangle h = Triangle(10, 10, 10);
  // h.getInfo();
  // h.areaS();
}

// question 1
class Circle {
  double radius;
  String color;
  Circle({required this.radius, required this.color});

  void info() {
    print('radius: $radius, color: $color');
  }
}

// question 2
class Student {
  String name;
  int age;
  double averageGrade;
  Student({required this.name, required this.age, required this.averageGrade});

  void info() {
    print('name: $name, age: $age, averageGrade: $averageGrade');
  }
}

// question 3
class Car {
  String brand;
  String model;
  int yearProduction;
  Car(this.brand, this.model, this.yearProduction);

  getInfo() {
    return 'brand; $brand, model: $model, yearProduction: $yearProduction';
  }
}

// question 4
class Book {
  String title;
  String author;
  int yearOfPublication;
  Book(this.title, this.author, this.yearOfPublication);

  getInfo() {
    return 'title: $title, author: $author, year of Publication: $yearOfPublication';
  }
}

// question 5
class Rectangle {
  int width;
  int height;
  Rectangle({required this.width, required this.height});

  void result() {
    print('width: $width \t height: $height');
  }

  void area() {
    print('Area: ${width * height}');
  }

  void perimeter() {
    print('Perimeter: ${(width + height) * 2}');
  }
}

// question 6
class BankAccount {
  String accountNumber;
  double balance;
  String accountHolder;
  BankAccount(this.accountNumber, this.balance, this.accountHolder);

  void info() {
    print(
        'accountNumber: $accountNumber, balance: $balance, accountHolder: $accountHolder');
  }

  double deposit(num amount) {
    return balance += amount;
  }

  withdraw(num amount) {
    if (balance >= amount) {
      return balance -= amount;
    } else {
      return 'insufficient amount';
    }
  }
}

// question 7
class Product {
  String name;
  double price;
  int quantity;
  Product(this.name, this.price, this.quantity);

  void info() {
    print('$name, $price, $quantity');
  }

  void totalPrice() {
    print(price * quantity);
  }
}

// question 8
class Employee {
  String name;
  String profession;
  double salary;
  Employee(
      {required this.name, required this.profession, required this.salary});

  info() {
    return '$name, $profession, $salary';
  }

  void moreMoney(num percent) {
    //print((salary * percent / 100) + salary);
    print((salary / 100 * percent) + salary);
  }
}

// question 9
class Triangle {
  int sideA;
  int sideB;
  int sideC;
  Triangle(this.sideA, this.sideB, this.sideC);

  void getInfo() {
    print('$sideA, $sideB, $sideC');
  }

  void areaS() {
    double P = (sideA + sideB + sideC) / 2;
    double S = P * (P - sideA) * (P - sideB) * (P - sideC);
    print(sqrt(S));
  }
}
