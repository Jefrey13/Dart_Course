abstract class Animal {
  String name;

  Animal(this.name);

  void makeSound();
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print('$name barks');
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print('$name meows');
  }
}

abstract class CanFly {
  void fly();
}

abstract class CanSwim {
  void swim();
}

class Duck extends Animal implements CanFly, CanSwim {
  Duck(String name) : super(name);

  @override
  void makeSound() {
    print('$name quacks');
  }

  @override
  void fly() {
    print('$name is flying');
  }

  @override
  void swim() {
    print('$name is swimming');
  }
}

void main() {
  Dog dog = Dog('Buddy');
  Cat cat = Cat('Whiskers');
  Duck duck = Duck('Daffy');

  dog.makeSound(); // Output: Buddy barks
  cat.makeSound(); // Output: Whiskers meows
  duck.makeSound(); // Output: Daffy quacks
  duck.fly(); // Output: Daffy is flying
  duck.swim(); // Output: Daffy is swimming
}
