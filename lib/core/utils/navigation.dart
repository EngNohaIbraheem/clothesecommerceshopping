import 'package:flutter/material.dart';
import 'package:shopui/feature/home/presentation/views/widgets/cart.dart';

void goTo(context, screen,) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => screen,
    ),
  );
}
void returnBack(context)
{
  Navigator.pop(context);
}