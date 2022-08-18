import 'package:bloc/bloc.dart';
import 'package:daily_shopping/src/models/product_model.dart';
import 'package:equatable/equatable.dart';

part 'cart_product_event.dart';
part 'cart_product_state.dart';

class CartProductBloc extends Bloc<CartProductEvent, CartProductState> {
  CartProductBloc() : super(CartProductInitial()) {
    on<CartProductEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
