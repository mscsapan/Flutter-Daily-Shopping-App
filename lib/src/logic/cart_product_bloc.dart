import 'package:bloc/bloc.dart';
import 'package:daily_shopping/src/database/product_database.dart';
import 'package:daily_shopping/src/models/product_model.dart';
import 'package:equatable/equatable.dart';

part 'cart_product_event.dart';

part 'cart_product_state.dart';

class CartProductBloc extends Bloc<CartProductEvent, CartProductState> {
  List<Product> addToCart = [];

  CartProductBloc() : super(CartProductInitial()) {
    on<CartProductEvent>((event, emit) async {
      if (event is CartProductInitialEvent) {
        emit(LoadingState());
        emit(GetAllCartProduct(product: addToCart));
      }
      if(event is AddToCartEvent){
        emit(LoadingState());
        emit(GetAllCartProduct(product: addToCart));
      }
      if(event is EditCartProduct){
        emit(LoadingState());
        emit(GetAllCartProduct(product: addToCart));
      }
    });
  }

  Future<void> getAddToCart() async {
    ProductDatabase().getAllProduct().then((value) {
      addToCart = value;
    });
  }
  Future<void> addProduct(Product product)async{
    await ProductDatabase().addToCart(product);
    await getAddToCart();
  }
}
