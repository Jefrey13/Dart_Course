class Animal {
  String name;

  Animal(this.name);

  void makeSound() {
    print('$name makes a sound');
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void makeSound() {
    super.makeSound(); // Llama al método makeSound() de la superclase
    print('$name barks');
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    super.makeSound(); // Llama al método makeSound() de la superclase
    print('$name meows');
  }
}

mixin CanFly {
  void fly() {
    print('Flying');
  }
}

mixin CanSwim {
  void swim() {
    print('Swimming');
  }
}

class Duck extends Animal with CanFly, CanSwim {
  Duck(String name) : super(name);

  @override
  void makeSound() {
    super.makeSound(); // Llama al método makeSound() de la superclase
    print('$name quacks');
  }
}

void main() {
  var dog = Dog('Buddy');
  dog.makeSound();
  // Output:
  // Buddy makes a sound
  // Buddy barks

  var cat = Cat('Whiskers');
  cat.makeSound();
  // Output:
  // Whiskers makes a sound
  // Whiskers meows

  var duck = Duck('Daffy');
  duck.makeSound();
  duck.fly();
  duck.swim();
  // Output:
  // Daffy makes a sound
  // Daffy quacks
  // Flying
  // Swimming
}
