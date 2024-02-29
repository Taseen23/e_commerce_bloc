import 'package:bloc/bloc.dart';
import 'package:e_commerce_bloc/src/blocs/blocs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app.dart';

void main() {
  Bloc.observer = BlocObserverEcom();
  runApp(const EcommerceApp());
}
