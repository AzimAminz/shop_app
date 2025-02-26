import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/Model/food.dart';
import 'package:shop_app/Model/restaurant.dart';
import 'package:shop_app/Widget/MyButton.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};
  FoodPage({super.key, required this.food}) {
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {

    //methode add to cart
    void addToCart(Food food,Map<Addon,bool> selectedAddons){
      // close the current food page to go back to menu
      Navigator.pop(context);
      
      // format the selected addons
      List<Addon> currentlySelectedAddons = [];

      for(Addon addon in widget.food.availableAddons){
        if(widget.selectedAddons[addon] == true){
          currentlySelectedAddons.add(addon);
        }
      }

      // add to cart
      context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
    }


  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      //UI Design
      Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              //food img
              Image.asset(widget.food.imagePath),

              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //food name
                    Text(
                      widget.food.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),

                    //food price
                    Text(
                      widget.food.price.toString(),
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 16,
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    //food description
                    Text(
                      widget.food.description,
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    Divider(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    //addons
                    Text(
                      "Add-ons",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).colorScheme.secondary),
                          borderRadius: BorderRadius.circular(8)),
                      child: ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        itemCount: widget.food.availableAddons.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          //get invidual add on
                          Addon addon = widget.food.availableAddons[index];

                          //return check box UI
                          return CheckboxListTile(
                              title: Text(addon.name),
                              subtitle: Text("\$" + addon.price.toString()),
                              value: widget.selectedAddons[addon],
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedAddons[addon] = value!;
                                });
                              });
                        },
                      ),
                    ),
                  ],
                ),
              ),

              MyButton(onTap: () => addToCart(widget.food,widget.selectedAddons), text: 'Add to cart'),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),

      //back button Design
      SafeArea(
        child: Opacity(
          opacity: 0.6,
          child: Container(
            margin: EdgeInsets.only(left: 25),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle),
            child: IconButton(
              
              icon: const Icon(Icons.arrow_back_ios_rounded),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),
      ),
    ]);
  }
}
