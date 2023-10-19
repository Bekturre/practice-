import 'dart:io';

void main() {
  // 1. Сумма чисел в заданном диапазоне
  stdout.write("Введите начало диапазона: ");
  int start = int.parse(stdin.readLineSync()!);
  stdout.write("Введите конец диапазона: ");
  int end = int.parse(stdin.readLineSync()!);
  int sum = 0;

  for (int i = start; i <= end; i++) {
    sum += i;
  }
  print("Сумма чисел в заданном диапазоне: $sum");

  // 2. Проверка на високосный год
  stdout.write("Введите год для проверки на високосность: ");
  int year = int.parse(stdin.readLineSync()!);

  if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
    print("$year - високосный год");
  } else {
    print("$year - не високосный год");
  }

  // 3. Наименьшее общее кратное
  stdout.write("Введите первое число: ");
  int num1 = int.parse(stdin.readLineSync()!);
  stdout.write("Введите второе число: ");
  int num2 = int.parse(stdin.readLineSync()!);

  int max = (num1 > num2) ? num1 : num2;
  int lcm;

  while (true) {
    if (max % num1 == 0 && max % num2 == 0) {
      lcm = max;
      break;
    }
    max++;
  }
  print("Наименьшее общее кратное: $lcm");

  // 4. Сумма цифр числа
  stdout.write("Введите целое число: ");
  int inputNumber = int.parse(stdin.readLineSync()!);
  int digitSum = 0;
  int number = inputNumber.abs();

  while (number > 0) {
    digitSum += number % 10;
    number ~/= 10;
  }
  print("Сумма цифр числа $inputNumber: $digitSum");

  // 5. Проверка на палиндром
  stdout.write("Введите слово или фразу: ");
  String inputString = stdin.readLineSync()!.toLowerCase();
  bool isPalindrome = true;

  for (int i = 0, j = inputString.length - 1; i < j; i++, j--) {
    if (inputString[i] != inputString[j]) {
      isPalindrome = false;
      break;
    }
  }

  if (isPalindrome) {
    print("$inputString - это палиндром");
  } else {
    print("$inputString - это не палиндром");
  }
}

