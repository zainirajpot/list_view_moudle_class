import 'package:flutter/material.dart';
import 'package:list_view_moudle_class/product.dart';

class ProductsWidgets extends StatelessWidget {
  const ProductsWidgets({required this.product, super.key});
  final List<Product> product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: ListView.builder(
          itemCount: product.length,
          itemBuilder: (context, index) {
            return ProductListTile(product[index]);
          }
        ),
      ),
    );
  }
}


class MyDesign extends StatelessWidget {
  final Product listOfProduct;
  const MyDesign({super.key,required this.listOfProduct});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CircleAvatar(child: Text(listOfProduct.title),),
    );
  }
}
class ProductListTile extends ListTile {
 final Product _product;

   ProductListTile(this._product,{super.key})
:super(
  leading: IconButton(onPressed: 
  (){}, icon: const Icon(Icons.access_alarm_outlined,),)
  ,title:  Text(_product.description),
  subtitle:  Text(_product.title),
  trailing:  Text(_product.price.toString()),
);

}
