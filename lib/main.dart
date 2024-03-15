import 'package:bloc/bloc.dart';
import 'package:e_commerce_bloc/firebase_options.dart';
import 'package:e_commerce_bloc/src/blocs/blocs.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = BlocObserverEcom();
  runApp(const EcommerceApp());
}
