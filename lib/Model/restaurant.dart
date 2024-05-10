import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:shop_app/Model/CartItem.dart';
import 'package:shop_app/Model/food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //burger
    Food(
      name: "Green Burger",
      description:
          'A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle',
      imagePath: 'lib/images/burger/burger1.jpg',
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 1.20),
        Addon(name: 'Avocado', price: 2.99)
      ],
    ),
    Food(
      name: "Melted Burger",
      description:
          'A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle',
      imagePath: 'lib/images/burger/burger2.jpeg',
      price: 0.98,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 1.20),
        Addon(name: 'Avocado', price: 2.99)
      ],
    ),
    Food(
      name: "Special Burger",
      description:
          'A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle',
      imagePath: 'lib/images/burger/burger3.jpeg',
      price: 1.02,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 1.20),
        Addon(name: 'Avocado', price: 2.99)
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          'A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle',
      imagePath: 'lib/images/burger/burger4.jpeg',
      price: 0.98,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 1.20),
        Addon(name: 'Avocado', price: 2.99)
      ],
    ),
    Food(
      name: "Bombastic Burger",
      description:
          'A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle',
      imagePath: 'lib/images/burger/burger5.jpg',
      price: 1.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 1.20),
        Addon(name: 'Avocado', price: 2.99)
      ],
    ),

    //salads
    Food(
      name: "Salad 1",
      description: 'Description salad',
      imagePath: 'lib/images/salad/salad1.jpg',
      price: 0.5,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Extra Mayo', price: 0.20),
        Addon(name: 'Extra Fruit', price: 0.10)
      ],
    ),

    Food(
      name: "Salad 2",
      description: 'Description salad',
      imagePath: 'lib/images/salad/salad2.jpeg',
      price: 0.5,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Extra Mayo', price: 0.20),
        Addon(name: 'Extra Fruit', price: 0.10)
      ],
    ),
    Food(
      name: "Salad 3",
      description: 'Description salad',
      imagePath: 'lib/images/salad/salad3.jpg',
      price: 0.5,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Extra Mayo', price: 0.20),
        Addon(name: 'Extra Fruit', price: 0.10)
      ],
    ),
    Food(
      name: "Salad 4",
      description: 'Description salad',
      imagePath: 'lib/images/salad/salad4.jpg',
      price: 0.5,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Extra Mayo', price: 0.20),
        Addon(name: 'Extra Fruit', price: 0.10)
      ],
    ),
    Food(
      name: "Salad 5",
      description: 'Description salad',
      imagePath: 'lib/images/salad/salad5.jpg',
      price: 0.5,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Extra Mayo', price: 0.20),
        Addon(name: 'Extra Fruit', price: 0.10)
      ],
    ),

    //drink
    Food(
      name: "Milo",
      description: 'Description drink',
      imagePath: 'lib/images/drink/milo.jpeg',
      price: 0.5,
      category: FoodCategory.drinks,
      availableAddons: [],
    ),
    Food(
      name: "Sprite",
      description: 'Description drink',
      imagePath: 'lib/images/drink/sprite.webp',
      price: 0.5,
      category: FoodCategory.drinks,
      availableAddons: [],
    ),
    Food(
      name: "Coca-Cola",
      description: 'Description drink',
      imagePath: 'lib/images/drink/cola.jpeg',
      price: 0.5,
      category: FoodCategory.drinks,
      availableAddons: [],
    ),
    Food(
      name: "Fanta",
      description: 'Description drink',
      imagePath: 'lib/images/drink/fanta.jpeg',
      price: 0.5,
      category: FoodCategory.drinks,
      availableAddons: [],
    ),
    //side
    Food(
      name: "Bread",
      description: 'Description side',
      imagePath: 'lib/images/side/bread.jpeg',
      price: 0.5,
      category: FoodCategory.sides,
      availableAddons: [],
    ),
    Food(
      name: "Ratatouille",
      description: 'Description side',
      imagePath: 'lib/images/side/ratatouille.jpg',
      price: 0.5,
      category: FoodCategory.sides,
      availableAddons: [],
    ),
    Food(
      name: "Fries",
      description: 'Description side',
      imagePath: 'lib/images/side/fries.jpeg',
      price: 0.5,
      category: FoodCategory.sides,
      availableAddons: [],
    ),
    Food(
      name: "Sweet Potato",
      description: 'Description side',
      imagePath: 'lib/images/side/sweet_potato.jpg',
      price: 0.5,
      category: FoodCategory.sides,
      availableAddons: [],
    ),

    //dessert
    Food(
      name: "Cherry Cake",
      description: 'Description dessert',
      imagePath: 'lib/images/dessert/cherry_cake.jpg',
      price: 0.5,
      category: FoodCategory.desserts,
      availableAddons: [],
    ),
    Food(
      name: "Fluffy Cake",
      description: 'Description dessert',
      imagePath: 'lib/images/dessert/fluffy_cake.jpg',
      price: 0.5,
      category: FoodCategory.desserts,
      availableAddons: [],
    ),
    Food(
      name: "Pavlova",
      description: 'Description dessert',
      imagePath: 'lib/images/dessert/pavlova.jpeg',
      price: 0.5,
      category: FoodCategory.desserts,
      availableAddons: [],
    ),
    Food(
      name: "Cheese Tart ",
      description: 'Description dessert',
      imagePath: 'lib/images/dessert/tart.jpg',
      price: 0.5,
      category: FoodCategory.desserts,
      availableAddons: [],
    ),
  ];

  // GETTERS

  List<Food> get menu => _menu;

  // OPERATIONS //

  // user cart
  final List<CartItem> _cart = [];

  //add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if the food items are same
      bool isSameFood = item.food == food;

      //check if the list of selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameAddons && isSameFood;
    });

    // if item already exist, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // otherwise, add a new cart item to the cart
    else {
      _cart.add(CartItem(
        food: food, 
        selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

  //remove from cart
  void removefromCart(CartItem cartItem){
    int cartIndex = _cart.indexOf(cartItem);

    if(cartIndex != -1){
      if(_cart[cartIndex].quantity > 1){
        _cart[cartIndex].quantity--;
      }else{
        _cart.removeAt(cartIndex);
      }
      notifyListeners();
    }
  }

  //get total price of cart
  double getTotalPrice(){
    double total = 0.0;

    for (CartItem cartItem in _cart){
      double itemTotal = cartItem.food.price;

      for(Addon addon in cartItem.selectedAddons){
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  // get total number of items on cart
  int getTotalItemCount(){
    int totalItemCount = 0;

    for(CartItem cartItem in _cart){
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  //clear cart
  void clearCart(){
    _cart.clear();
    notifyListeners();
  }

  // HELPERS
}
