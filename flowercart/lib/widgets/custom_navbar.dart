
import 'package:flowercart/blocs/cart/cart_bloc.dart';
import 'package:flowercart/blocs/wishlist/wishlist_bloc.dart';
import 'package:flowercart/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomNavBar extends StatelessWidget {
  final String screen;
  final Product? product;
  
  const CustomNavBar({
    Key? key, 
    required this.screen,
    this.product,
  }) : super(key: key);

@override
Widget build(BuildContext context) {
  return BottomAppBar(
      color: Color(0xffEDDBC0),
      child: Container(height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: _selectNavBar(context, screen)!,
      ),
      ),
      );
}

List<Widget>? _selectNavBar(context,  screen) {
  switch (screen) {
    case '/':
      return _buildNavBar(context);
    case '/catalog':
      return _buildNavBar(context);
    case '/wishlist':
      return _buildNavBar(context);
    case '/order-confirmation':
      return _buildNavBar(context);
    case '/inbox':
      return _buildNavBar(context);
    case '/product':
      return _buildAddToCartNavBar(context, product);
    case '/cart':
      return _buildGoToCheckoutNavBar(context);
    case '/checkout':
      return _buildOrderNowNavBar(context);
    case '/user':
      return _buildNavBar(context);
    default: 
      _buildNavBar(context);
  }
}

List<Widget> _buildNavBar(context) {
  return [ 
    IconButton(
      icon: Icon(Icons.home, color: Colors.black,),
      onPressed: () {
      Navigator.pushNamed(context, '/');
    }, 
    ),
    IconButton(
      icon: Icon(Icons.shopping_cart, color: Colors.black,),
      onPressed: () {
      Navigator.pushNamed(context, '/cart');
    },
    ),
    IconButton(
      icon: Icon(Icons.person, color: Colors.black, ),
      onPressed: () {
      Navigator.pushNamed(context, '/user');
    }, 
    ),
    IconButton(icon: Icon(Icons.messenger_rounded),
    onPressed: () {
      Navigator.pushNamed(context, '/inbox');
    }),
  ];
}

List<Widget> _buildAddToCartNavBar(context, product) {
  return [
    IconButton(
      icon: Icon(Icons.share, color: Colors.black),
      onPressed: () {},
     ),
    BlocBuilder<WishlistBloc, WishlistState>(
      builder: (context, state) {
        if (state is WishlistLoading) {
          return CircularProgressIndicator();
        }
        if (state is WishlistLoaded) {
          return IconButton(
            icon: Icon(Icons.favorite, color: Colors.black),
            onPressed: () {
              final snackBar = 
                    SnackBar(content: Text('Added to your Wishlist!'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        );
        }
        return Text('Something went wrong!');
      },
      ),
      BlocBuilder<CartBloc, CartState>(
                  builder: (context, state) {
        if (state is CartLoading) {
          return CircularProgressIndicator();
        }
        if (state is CartLoaded) {
          return ElevatedButton(
            onPressed: () {
              context
                  .read<CartBloc>()
                  .add(CartProductAdded(product));
                  Navigator.pushNamed(context, '/cart');
            },
                       style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                       shape: RoundedRectangleBorder(),
                       ),
                                  child: Text('ADD TO CART',
                                      style: Theme.of(context).textTheme.headline3!),
                                );
                  }
              return Text('Somethine went wrong!');                  },
                )
  ];
}
List<Widget> _buildGoToCheckoutNavBar(context) {
  return [
    ElevatedButton(onPressed: () {
      Navigator.pushNamed(context, '/checkout');
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.black,
      shape: const RoundedRectangleBorder(),
    ),
    child: Text(
      'GO TO CHECKOUT',
      style: Theme.of(context).textTheme.headline3,
      ),
      ),
  ];
}
List<Widget> _buildOrderNowNavBar(context) {
  return [
    ElevatedButton(onPressed: () {
      Navigator.pushNamed(context, '/order-confirmation');
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.black,
      shape: const RoundedRectangleBorder(),
      elevation: 0
    ),
    
    child: Text(
      'ORDER NOW',
      style: Theme.of(context)
      .textTheme
      .headline3!.copyWith(color: Colors.white),
      ),
      ),
  ];
}
}