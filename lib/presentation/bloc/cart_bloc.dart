import 'package:api_bloc_pattern/presentation/bloc/cart_event.dart';
import 'package:api_bloc_pattern/presentation/bloc/cart_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartStateInitial()){
    on<CartEvent>((event, emit) {
      
    });
  }
}
