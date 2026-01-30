import 'package:api_bloc_pattern/models/cart_model.dart';
import 'package:api_bloc_pattern/presentation/bloc/cart_event.dart';
import 'package:api_bloc_pattern/presentation/bloc/cart_state.dart';
import 'package:api_bloc_pattern/services/api_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final ApiServices _apiServices = ApiServices();
  List<CartModel> cartModelList = [];

  CartBloc() : super(CartStateInitial()) {
    on<GetAllCarts>((event, emit) async {
      try {
        emit(CartStateLoading());
        cartModelList = await _apiServices.getData();
        emit(CartStateLoaded(cartModelList: cartModelList));
      } catch (e) {
        emit(CartStateError(message: e.toString()));
      }
    });
  }
}
