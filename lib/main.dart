import 'package:bloc_connectivity/bloc/internet_bloc.dart';
import 'package:bloc_connectivity/cubit/internet_cubit.dart';
import 'package:bloc_connectivity/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      //create: ( context) =>InternetBloc(),
      create: ( context) =>InternetCubit(),
      child:  const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}



