import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/model/product.dart';
import 'package:shop_app/pages/product_details_page.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  ProductItem(this.product);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProductDetailsPage.routeName);
          },
          child: FadeInImage(
            image: NetworkImage(product.imageUrl),
            placeholder: AssetImage("assets/images/bg_no_image.png"),
            imageErrorBuilder: (context, error, stackTrace) {
              return Image.asset('assets/images/bg_no_image.png',
                  fit: BoxFit.cover);
            },
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          leading: IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
              color: Colors.white),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Theme.of(context).accentColor,
            onPressed: () {},
          ),
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black54,
        ),
      ),
    );
  }
}
