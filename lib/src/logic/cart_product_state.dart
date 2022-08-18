part of 'cart_product_bloc.dart';

abstract class CartProductState extends Equatable {}

//initial product
class CartProductInitial extends CartProductState {
  @override
  List<Object> get props => [];
}

//loading product
class CartProductLoading extends CartProductState {
  @override
  List<Object?> get props => [];
}

//get all product
class GetAllCartProduct extends CartProductState {
  final List<Product> product;

  GetAllCartProduct({required this.product});

  @override
  List<Object?> get props => [product];
}

class UpdateCartProduct extends CartProductState {
  final Product product;
  final int id;

  UpdateCartProduct({required this.product, required this.id});

  @override
  List<Object?> get props => [product, id];
}

//delete single product
class DeleteSingleCartProduct extends CartProductState {
  final int id;

  DeleteSingleCartProduct({required this.id});

  @override
  List<Object?> get props => [id];
}
//delete all product
