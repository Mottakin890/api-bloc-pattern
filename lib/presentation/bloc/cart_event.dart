import 'package:equatable/equatable.dart';

abstract class CartEvent extends Equatable {}

class CartLoadingEvent extends CartEvent{
  @override
  List<Object?> get props => [];
}