// ignore_for_file: must_be_immutable

import 'package:api_bloc_pattern/models/cart_model.dart';
import 'package:equatable/equatable.dart';

abstract class CartState extends Equatable {}

class CartStateInitial extends CartState {
  @override
  List<Object?> get props => [];
}

class CartStateLoading extends CartState {
  @override
  List<Object?> get props => [];
}

class CartStateLoaded extends CartState {
  List<CartModel> cartModelList;
  CartStateLoaded({required this.cartModelList});
  @override
  List<Object?> get props => [cartModelList];
}

class CartStateError extends CartState {
  String message;
  CartStateError({required this.message});
  @override
  List<Object?> get props => [message];
}
