import 'package:flowercart/blocs/cart/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        if (state is CartLoaded) {
        return Column(children: [Divider(thickness: 2),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('SUBTOTAL', 
                          style: Theme.of(context).textTheme.headline5,
                          ),
                          Text('\₱${state.cart.subtotalString}',
                          style: Theme.of(context).textTheme.headline5,
                          ),
                        ],
                        ),
                        SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Text('DELIVERY FEE', 
                         style: Theme.of(context).textTheme.headline5,
                         ),
                          Text('\₱${state.cart.deliveryFeeString}',
                         style: Theme.of(context).textTheme.headline5,
                      ),
                    ],
                    ),
                    
                    ],
                  ),
                ),
                Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.black.withAlpha(50),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.all(5),
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Text('TOTAL', 
                         style: Theme.of(context)
                         .textTheme
                         .headline5!
                         .copyWith(color: Colors.black),
                         ),
                            Text('\₱${state.cart.totalString}',
                         style: Theme.of(context)
                         .textTheme
                         .headline5!
                         .copyWith(color: Colors.black),
                      ),
                    ],
                    ),
                          ),
                        ),
                      ],
                      ),
                      ],
                      );
        }
        else {return Text('Something went wrong!');}
      },
    );
  }
}