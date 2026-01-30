import 'package:equatable/equatable.dart';

abstract class CartEvent extends Equatable {}

class GetAllCarts extends CartEvent{
  @override
  List<Object?> get props => [];
}