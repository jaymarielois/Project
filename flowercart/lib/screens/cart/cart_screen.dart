import 'package:flowercart/model/cart_model.dart';
import 'package:flowercart/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flowercart/widgets/widgets.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = '/cart';
  const CartScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => CartScreen()
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Cart'),
      bottomNavigationBar: BottomAppBar(
          color: Color(0xffEDDBC0),
          child: Container(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {},
                  child: Text('GO TO CHECKOUT',
                      style: Theme.of(context).textTheme.headline3!.copyWith(color: Colors.white)),
                )
              ],
            ),
          ),
          ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(
                    Cart().freeDeliveryString,
                  style: Theme.of(context).textTheme.headline5,
                  ),
                  ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, '/');
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(),
                    elevation: 0,
                    ),
                  child: Text(
                    'Add More Items',
                    style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white,),
                    ),
                    ),
                  ],
                ),
            SizedBox(height: 10,),

            SizedBox(height: 400,
            child: ListView.builder(
              itemCount: Cart().products.length,
              itemBuilder: (context, index) {
                return CartProductCard(product: Cart().products[index]);
              },
              ),
            ),
              ],
            ),
            

             
            Column(children: [
              Divider(thickness: 2),
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
                      Text('\$${Cart().subtotalString}',
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
                      Text('\$${Cart().deliveryFeeString}',
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
                        Text('\$${Cart().totalString}',
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
            ],)
            
          ],
          ),
      ),
    );
  }
}

