
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';


import 'cart_model.dart';

class CartTotal extends StatelessWidget {
  const CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Consumer<CartModel>(builder:(context, cart, child)=>
            Text("\$${cart.totalPrice}", style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),)),
        ElevatedButton(onPressed: (){
          // ScaffoldMessenger.of(context).showSnackBar(
          //     SnackBar(content: Text("not Supported yet. "))
          // );
          // context.pushReplacement(paymentMethod);

        },  style: ElevatedButton.styleFrom(
        ),child: const Text("Buy",
          style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.bold
          ),

        ),)
      ],
    );
  }
}