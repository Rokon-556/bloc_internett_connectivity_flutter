import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum InternetState{initial,grained,lost}

class InternetCubit extends Cubit<InternetState>{

 final Connectivity _connectivity=Connectivity();
 StreamSubscription? subscription;

  InternetCubit():super(InternetState.initial){
    subscription=_connectivity.onConnectivityChanged.listen((result) {
      if(result==ConnectivityResult.mobile||result==ConnectivityResult.wifi){
        emit(InternetState.grained);
      }else{
        emit(InternetState.lost);
      }
    });
  }
  @override
  Future<void> close() {
    subscription?.cancel();
    return super.close();
  }
}