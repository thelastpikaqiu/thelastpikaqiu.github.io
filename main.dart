void main() {
  // 示例 1: 打印文本
  print('Hello, Dart!');

  // 示例 2: 变量和常量
  var name = 'John';
  final int age = 30;
  print('Name: $name, Age: $age');

  // 示例 3: 基本数据类型
  int anInteger = 42;
  double aDouble = 3.14;
  bool isTrue = true;
  String aString = 'Dart is fun';
  print('Integer: $anInteger, Double: $aDouble, Boolean: $isTrue, String: $aString');

  // 示例 4: 条件语句
  if (age > 20) {
    print('You are an adult.');
  } else {
    print('You are a child.');
  }

  // 示例 5: 循环
  for (var i = 0; i < 5; i++) {
    print('Loop $i');
  }

  // 示例 6: 函数
  int add(int a, int b) {
    return a + b;
  }
  print('Sum: ${add(2, 3)}');

  // 示例 7: 匿名函数
  var multiply = (int a, int b) => a * b;
  print('Product: ${multiply(4, 5)}');

  // 示例 8: 列表
  var fruits = ['Apple', 'Banana', 'Cherry'];
  fruits.forEach((fruit) => print(fruit));

  // 示例 9: 映射
  var person = {'name': 'Alice', 'age': 25};
  print('Person: ${person['name']}, Age: ${person['age']}');

  // 示例 10: 枚举
  enum Direction { north, south, east, west }
  var direction = Direction.north;
  print('Direction: $direction');

  // 示例 11: 类和对象
  var car = Car('Tesla', 'Model S');
  car.describe();

  // 示例 12: 类的继承
  var electricCar = ElectricCar('Nissan', 'Leaf', 40);
  electricCar.describe();

  // 示例 13: 异常处理
  try {
    int result = 12 ~/ 0;
    print(result);
  } catch (e) {
    print('Error: $e');
  }

  // 示例 14: Futures 和 async/await
  fetchUserOrder().then((order) => print('Order: $order'));

  // 示例 15: 异步函数
  displayUserOrder();

  // 示例 16: 字符串操作
  var greeting = 'Hello';
  var newGreeting = greeting.replaceAll('e', 'a');
  print('Greeting: $newGreeting');

  // 示例 17: 集合操作
  var numbers = [1, 2, 3, 4, 5];
  var evenNumbers = numbers.where((number) => number.isEven).toList();
  print('Even Numbers: $evenNumbers');

  // 示例 18: 扩展方法
  print('Squared: ${4.squared()}');

  // 示例 19: 泛型
  var intStack = Stack<int>();
  intStack.push(1);
  intStack.push(2);
  print('Popped: ${intStack.pop()}');

  // 示例 20: Stream
  var stream = Stream.periodic(Duration(seconds: 1), (count) => count);
  var subscription = stream.listen((count) => print('Count: $count'));
  Future.delayed(Duration(seconds: 5), () => subscription.cancel());
}

// 示例 11: 类和对象
class Car {
  String make;
  String model;

  Car(this.make, this.model);

  void describe() {
    print('Car: $make $model');
  }
}

// 示例 12: 类的继承
class ElectricCar extends Car {
  int batteryCapacity;

  ElectricCar(String make, String model, this.batteryCapacity) : super(make, model);

  @override
  void describe() {
    print('Electric Car: $make $model with battery capacity of $batteryCapacity kWh');
  }
}

// 示例 14: Futures 和 async/await
Future<String> fetchUserOrder() => Future.delayed(
      Duration(seconds: 2),
      () => 'Large Latte',
    );

// 示例 15: 异步函数
Future<void> displayUserOrder() async {
  var order = await fetchUserOrder();
  print('Awaited Order: $order');
}

// 示例 18: 扩展方法
extension NumberParsing on int {
  int squared() => this * this;
}

// 示例 19: 泛型
class Stack<T> {
  final _list = <T>[];

  void push(T value) => _list.add(value);

  T pop() => _list.removeLast();
}
