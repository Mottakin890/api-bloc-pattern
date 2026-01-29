import 'package:api_bloc_pattern/presentation/bloc/cart_bloc.dart';
import 'package:api_bloc_pattern/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApiBlocPattern extends StatelessWidget {
  const ApiBlocPattern({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => CartBloc())],
      child: MaterialApp(home: HomeView(), debugShowCheckedModeBanner: false),
    );
  }
}
