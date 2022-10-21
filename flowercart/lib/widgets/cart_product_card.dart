import 'package:flowercart/blocs/cart/cart_bloc.dart';
import 'package:flowercart/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartProductCard extends StatelessWidget {
  final Product product;
  final int quantity;

  const CartProductCard({
    Key? key,
    required this.product,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Image.network(
            product.imageUrl,
            width: 100,
            height: 80,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(
                  '\$${product.price}',
                  style: Theme.of(context).textTheme.headline5,
                )
              ],
            ),
          ),
          SizedBox(width: 10),
          BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              return Row(
                children: [
                  IconButton(icon: Icon(Icons.remove_circle), onPressed: () {
                    context
                    .read<CartBloc>()
                    .add(CartProductRemoved(product));
                    
                  }),
                  Text(
                    '$quantity',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  IconButton(onPressed: () {
                    context
                    .read<CartBloc>()
                    .add(CartProductAdded(product));
                  }, icon: Icon(Icons.add_circle))
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
