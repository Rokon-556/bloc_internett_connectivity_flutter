// import 'dart:async';
//
// import 'package:bloc_connectivity/bloc/internet_event.dart';
// import 'package:bloc_connectivity/bloc/internet_state.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class InternetBloc extends Bloc<InternetEvents, InternetState> {
//
//   final Connectivity _connectivity=Connectivity();
//
//   StreamSubscription? subscription;
//
//   InternetBloc():super(InitialState()){
//     on<InternetLostEvent>((event, emit) => emit(LostState()));
//     on<InternetGrainedEvent>((event,emit)=>emit(GrainedState()));
//
//     subscription=_connectivity.onConnectivityChanged.listen((result) {
//       if(result==ConnectivityResult.wifi||result==ConnectivityResult.mobile){
//         add(InternetGrainedEvent());
//       }else{
//         add(InternetLostEvent());
//       }
//     });
//   }
//   @override
//   Future<void> close() {
//    subscription?.cancel();
//     return super.close();
//   }
//
// }
