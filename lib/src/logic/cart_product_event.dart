part of 'cart_product_bloc.dart';

abstract class CartProductEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class CartProductInitialEvent extends CartProductEvent {
  @override
  List<Object?> get props => [];
}

class AddToCartEvent extends CartProductEvent {
  final Product product;

  AddToCartEvent(this.product);

  @override
  List<Object?> get props => [product];
}

class DeleteCartProduct extends CartProductEvent {
  final int id;

  DeleteCartProduct({required this.id});

  @override
  List<Object?> get props => [id];
}

class EditCartProduct extends CartProductEvent {
  final Product? product;
  final int? id;

  EditCartProduct({this.product, this.id});

  @override
  List<Object?> get props => [product, id];
}
