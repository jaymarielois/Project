import 'package:flutter/material.dart';
import 'package:trial/constants.dart';
import 'package:trial/models/products.dart';

import 'categories.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: Text(
              "Flowers",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        Categories(),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(itemCount: Product.lenght,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75,
                  ),

                  itemBuilder: (context, index) => ItemCard(product: null, press: null,)
        ),
            ),
        )
        ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final Product? product;
  final Function? press;
  const ItemCard({
    Key? key, this.product, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget>[
        Container(
          padding: EdgeInsets.all(kDefaultPaddin),
          height: 170,
          width: 170,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(16)
          ),
          child: Image.asset("assets/images/Blush and Blue Dried Flower Bouquet.jpg"),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
        child: Text("Blush and Blue",
          style: TextStyle(color: kTextLightColor),
        ),
        ),
        Text(
          "P2,000.00",
        style: TextStyle(fontWeight:FontWeight.bold ),)
      ],
    );
  }
}

