import 'Resources.dart';
import 'ICoffee.dart';

class CoffeeMachine {
  Resources _resources;

  CoffeeMachine(this._resources);

  void fillResources(int coffeeBeans, int milk, int water, int cash) {
    _resources.setResources(coffeeBeans, milk, water, cash);
  }

  void addResources(int coffeeBeans, int milk, int water, int cash) {
    _resources.getResource(coffeeBeans, milk, water, cash);
  }

  Resources makeCoffeeByType(ICoffee coffee) {
    if (isAvailableResources(coffee.getResources())) {
      return coffee.getResources();
    } else {
      throw Exception('Недостаточно ресурсов для приготовления кофе');
    }
  }

  bool isAvailableResources(Resources requiredResources) {
    return _resources.coffeeBeans >= requiredResources.coffeeBeans &&
        _resources.milk >= requiredResources.milk &&
        _resources.water >= requiredResources.water;
  }

}
