
import 'dart:io';

void main(){
photofunc();
}


nalogfunc(){
print("Введите сумму дохода: ");
  var doxod = double.tryParse(stdin.readLineSync()!) ?? 0;

  double taxPercentage;
  switch (doxod) {
    case double.infinity:
      taxPercentage = 0.12;
     break;
    default:
    if (doxod <= 10000) {
        taxPercentage = 0;
      } else if (doxod <= 50000) {
        taxPercentage = 0.1;
      } else {
        taxPercentage = 0.12;
        
      }
  }

  var tax = doxod * taxPercentage;
  print("Сумма налога на доход: $tax");
}





calcfunc(){
 print("Введите первое число: ");
  var num1 = int.tryParse(stdin.readLineSync()!) ?? 0;
  
  print("Введите (+, -, *, /): ");
  var znak = stdin.readLineSync()!;
  
  print("Введите второе число: ");
  var num2 = double
  .tryParse(stdin.readLineSync()!) ?? 0;

  double result;
  switch (znak) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print("Ошибка: деление на ноль.");
        return;
      }
      break;
    default:
      return;
  }
  print("Результат: $result");
}





void photofunc() {
  print("Введите расширение файла  '.txt', '.jpg', '.pdf': ");
  var choice = stdin.readLineSync()!.toLowerCase();

  String fileType;
  switch (choice) {
    case '.txt':
      fileType = "Текстовый файл";
      break;
    case '.jpg':
     fileType = "Изображение";
      break;
    case '.pdf':
      fileType = "Документ";
      break;
    default:
      fileType = "Неизвестный тип файла";
      break;
  }
  print("Тип файла: $fileType");
}

