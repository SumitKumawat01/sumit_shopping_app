import 'package:flutter/material.dart';
import 'package:myshop/models/product.dart';
import 'package:myshop/screens/product_detail_screen.dart';
import '../screens/product_detail_screen.dart  ';
class ProductItem extends StatelessWidget{

      final String id;
      final String title;
      final String imageUrl;

      ProductItem(this.id,this.title,this.imageUrl);





  @override
  Widget build(BuildContext context){
    return ClipRRect
    (borderRadius: BorderRadius.circular(10 ),
      child: GridTile(
        child:GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
              builder: (ctx)=>ProductDetailScreen(title)),
            );
          },
          child: Image.network(
            imageUrl,
       fit:BoxFit.cover,
          ),
       ),
  
       footer:GridTileBar(
        backgroundColor: Colors.black54,
        leading: IconButton(icon: Icon(Icons.favorite),
      // color:Theme.of(context).accentColor,
        onPressed: (){},),
        title:Text(title,
        textAlign:TextAlign.center ,
       ),
       trailing: IconButton(
        icon: Icon(
          Icons.shopping_cart),
       onPressed:(){},
    
      
       ),
       ),
       ),
    );
  
  }
}  