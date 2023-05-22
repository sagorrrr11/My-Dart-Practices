void main() {
  Car car1 = Car(
    model: 'Camry',
    brand: 'Toyota',
    year: 2015,
    milesDriven: 45000,
  );
  car1.drive(15000);

  Car car2 = Car(
    brand: 'BMW',
    model: 'BMW X7',
    year: 2012,
    milesDriven: 50000,
  );
  car2.drive(8000);

  Car car3 = Car(
    model: 'Stellantis GLS',
    brand: 'Stellantis',
    year: 2021,
    milesDriven: 5000,
  );
  car3.drive(1000);

  print(
    '${car1.getBrand()} ${car1.getModel()} (${car1.getYear()}) has driven ${car1.getMilesDriven()} miles and is ${car1.getAge()} years old',
  );
  print(
    '${car2.getBrand()} ${car2.getModel()} (${car2.getYear()}) has driven ${car2.getMilesDriven()} miles and is ${car2.getAge()} years old',
  );
  print(
    '${car3.getBrand()} ${car3.getModel()} (${car3.getYear()}) has driven ${car3.getMilesDriven()} miles and is ${car3.getAge()} years old',
  );

  print('Total number of cars created: ${Car.numberOfCars}');
}

class Car {
  String brand;
  String model;
  int year;
  double milesDriven;
  static int numberOfCars = 0;

  Car({
    required this.brand,
    required this.model,
    required this.year,
    required this.milesDriven,
  }) {
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }
}
