import 'package:bloc_connectivity/bloc/internet_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/internet_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
       // child: BlocConsumer<InternetBloc, InternetState>(
        child: BlocConsumer<InternetCubit, InternetState>(
            builder: (context, state) {
          //if (state is GrainedState) {
          if (state ==InternetState.grained) {
            return Text('Connected');
          }
          //else if (state is LostState) {
          else if ( state==InternetState.lost) {
            return Text('Disconnected');
          } else {
            return Text('Loading Now...');
          }
        }, listener: (context, state) {
          if (state ==InternetState.grained) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Internet Connected'),
              backgroundColor: Colors.green,
            ));
          } else {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Internet Disconnected'),
              backgroundColor: Colors.red,
            ));
          }
        }),
        //
        // BlocBuilder<InternetBloc, InternetState>(
        // builder: (context, state) {
        //   if (state is GrainedState) {
        //     return Text('Connected');
        //   } else if (state is LostState) {
        //     return Text('Disconnected');
        //   } else {
        //     return Text('Loading Now...');
        //   }
        // },
        // ),
      )),
    );
  }
}
