import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/model/product.dart';

class ProductOverViewPage extends StatelessWidget {
  final List<Product> product = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
        id: 'p2',
        title: 'Trousers',
        description: 'A nice pair of trousers.',
        price: 59.99,
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trous'),
    Product(
        id: 'p3',
        title: 'tttttt',
        description: 'A nice pair of ttttt.',
        price: 70.99,
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trous')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My shopApp'),
      ),
      drawer: Drawer(),
      body: GridView.builder(
          gridDelegate: null,
          itemBuilder: (ctx, index) {
            return Container();
          }),
    );
  }
}
