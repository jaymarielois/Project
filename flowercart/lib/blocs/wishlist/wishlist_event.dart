part of 'wishlist_bloc.dart';

abstract class WishlistEvent extends Equatable {
   WishlistState();

  @override
  List<Object> get props => [];
}

class StartWishlist extends WishlistEvent {
  @override
  WishlistState() {
    // TODO: implement WishlistState
    throw UnimplementedError();
  }
}


class AddWishlistProduct extends WishlistEvent {
  final Product product;

  AddWishlistProduct(this.product);

  @override
  List<Object> get props => [product];

  @override
  WishlistState() {
    // TODO: implement WishlistState
    throw UnimplementedError();
  }
}

class RemoveWishlistProduct extends WishlistEvent {
  final Product product;

  RemoveWishlistProduct(this.product);

  @override
  List<Object> get props => [product];

  @override
  WishlistState() {
    // TODO: implement WishlistState
    throw UnimplementedError();
  }
}