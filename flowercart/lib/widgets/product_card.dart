import 'package:flowercart/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final double withFactor;
  final double leftPosition;
  final bool isWishlist;

  const ProductCard({
    Key? key,
    required this.product,
    this.withFactor = 2.5,
    this.leftPosition = 5,
    this.isWishlist = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/product', arguments: product,
         );
      },
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / withFactor,
            height: 150,
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 100,
            left: leftPosition,
            child: Container(
              width: MediaQuery.of(context).size.width / 2.5,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black.withAlpha(50),
              ),
            ),
          ),
          Positioned(
            top: 90,
            left: leftPosition + 5,
            child: Container(
              width: MediaQuery.of(context).size.width / 2.5 - 10,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.name,
                            style:
                            Theme.of(context).textTheme.headline5!.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '\$${product.price}',
                            style:
                            Theme.of(context).textTheme.headline6!.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add_circle, color: Colors.white,),
                      ),
                    ),
                    isWishlist ?
                    Expanded(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete, color: Colors.white,),
                      ),
                    )
                        : SizedBox()
                  ],
                ),
              ) ,
            ),
          )],
      ),
    );
  }
}

