import 'package:flutter/material.dart';
import 'package:list_view_moudle_class/product.dart';
import 'package:list_view_moudle_class/products_widget.dart';
 List <Product> products=[
  Product(title: "nxa", price: 12.3, description: "djsk", imageAssetPath: 'path'),
  Product(title: "talha", price: 12.3, description: "djsk", imageAssetPath: 'hello')
  ,Product(title: "nxa", price: 12.3, description: "djsk", imageAssetPath: 'path')
  ,Product(title: "nxa", price: 12.3, description: "djsk", imageAssetPath: 'path')
  ,Product(title: "nxa", price: 12.3, description: "djsk", imageAssetPath: 'path')
  ,Product(title: "nxa", price: 12.3, description: "djsk", imageAssetPath: 'path'),
  Product(title: "nxa", price: 12.3, description: "djsk", imageAssetPath: 'path'), 
   Product(title: "nxa", price: 12.3, description: "djsk", imageAssetPath: 'path'),
  Product(title: "talha", price: 12.3, description: "djsk", imageAssetPath: 'hello')
  ,Product(title: "nxa", price: 12.3, description: "djsk", imageAssetPath: 'path')
  ,Product(title: "nxa", price: 12.3, description: "djsk", imageAssetPath: 'path')
  ,Product(title: "nxa", price: 12.3, description: "djsk", imageAssetPath: 'path')
  ,Product(title: "nxa", price: 12.3, description: "djsk", imageAssetPath: 'path'),
  Product(title: "nxa", price: 12.3, description: "djsk", imageAssetPath: 'path'), 
   Product(title: "nxa", price: 12.3, description: "djsk", imageAssetPath: 'path'),
  Product(title: "talha", price: 12.3, description: "djsk", imageAssetPath: 'hello')
  ,Product(title: "nxa", price: 12.3, description: "djsk", imageAssetPath: 'path')
  ,Product(title: "nxa", price: 12.3, description: "djsk", imageAssetPath: 'path')
  ,Product(title: "nxa", price: 12.3, description: "djsk", imageAssetPath: 'path')
  ,Product(title: "nxa", price: 12.3, description: "djsk", imageAssetPath: 'path'),
  Product(title: "nxa", price: 12.3, description: "djsk", imageAssetPath: 'path'), 
   Product(title: "nxa", price: 12.3, description: "djsk", imageAssetPath: 'path'),
  Product(title: "talha", price: 12.3, description: "djsk", imageAssetPath: 'hello')
  ,Product(title: "nxa", price: 12.3, description: "djsk", imageAssetPath: 'path')
  ,Product(title: "nxa", price: 12.3, description: "djsk", imageAssetPath: 'path')
  ,Product(title: "nxa", price: 12.3, description: "djsk", imageAssetPath: 'path')
  ,Product(title: "nxa", price: 12.3, description: "djsk", imageAssetPath: 'path'),
  Product(title: "nxa", price: 12.3, description: "djsk", imageAssetPath: 'path'), 
  
 ];
 




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  ProductsWidgets(product: products),
    );
  }
}


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      ListView.builder(itemCount: products.length,itemBuilder: (context, index) {
        return ListTile(leading: Text(products[index].price.toString())
        ,title: Text(products[index].title),trailing: 
        Text(products[index].description),);
      },),
      ),
    );
  }
}



// class ListviewScreen extends StatefulWidget {
//   const ListviewScreen({super.key});

//   @override
//   State<ListviewScreen> createState() => _istviewScreenState();
// }

// // ignore: camel_case_types
// class _listviewScreenState extends State<listviewScreen> {
//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height;
//     var width = MediaQuery.of(context).size.width;
//     List<Widget> tabItems = const [
//       Text(
//         'Meals',
//           style: TextStyle(
//           color: Colors.black38,
//         ),
     
//       ),
//       Text(
//         'Sides',
//         style: TextStyle(
//           color: Colors.black38,
//         ),
//       ),
//       Text(
//         'Snacks',
//          style: TextStyle(color: Colors.black),
//       ),
//     ];

    // return DefaultTabController(
    //   length: tabItems.length,
    //   child: Scaffold(
    //     appBar: AppBar(
    //       leading: const Icon(Icons.arrow_back,color: Colors.black),
    //       elevation: 0,
    //       backgroundColor: Colors.white,
    //       title: const Center(
    //         child: Text(
    //           'Our Menu',
    //           style: TextStyle(
    //             fontWeight: FontWeight.bold,
    //             color: Colors.black,
    //             fontSize: 15,
    //           ),
    //         ),
    //       ),
    //       actions: [
    //         IconButton(
    //           onPressed: () {},
    //           icon:const Icon(Icons.add_shopping_cart,color: Colors.black),
    //         ),
    //       ],
    //       bottom: TabBar(tabs: tabItems,indicatorColor: Colors.orange,
    //       indicatorSize: TabBarIndicatorSize.label,
    //       ),
    //     ),
    //     // ignore: prefer_const_constructors
    //     body:  ProductsWidgets(ProductS:product),
    //   ),
//     // );
//   }
// }
