import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flowercart/model/Wishlist_model.dart';
import 'package:flowercart/model/models.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishListEvent, WishlistState> {
  WishlistBloc() : super(WishlistLoading());

  @override
  Stream<WishlistState> mapEventToState(WishlistEvent event,) async* {
    if (event is StartWishlist) {
      yield* _mapStartWishlistToState;
    } else if (event is AddWishlistProduct) {
      yield* _mapAddWishlistProductToState(event, state);
    } else if (event is RemoveWishlistProduct) {
      yield* _mapRemoveWishlistProductToState(event, state);
    }
    Stream<WishlistState> mapStartWishlistToState() async* {
      yield WishlistLoading();
      try {
        await Future<void>.delayed(Duration(seconds: 1));
        yield const WishlistLoaded();
      } catch () {}
    }

    Stream<WishlistState> mapAddWishlistProductToState(AddWishlistProduct event,
        WishlistState state,) async* {
      if (state is WishlistLoaded) {
        try {
          yield WishlistLoaded(
              wishlist: Wishlist(products: List.from(state.wishlist.products)
                ..add(event.product)));
        } catch () {}
      }
    }

    Stream<WishlistState> mapRemoveWishlistProductToState(
        RemoveWishlistProduct event,
        WishlistState state,) async* {
      if (state is WishlistLoaded) {
        try {
          yield WishlistLoaded(
              wishlist: Wishlist(products: List.from(state.wishlist.products)
                ..remove(event.product)));
        } catch () {}
      }
    }
  }
}
