    import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final String title;
  final double price;

  ProductDetailScreen(this.title,this.price);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text(title),
    ),
    ); 
  }
}