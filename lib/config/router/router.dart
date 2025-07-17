import 'package:flutter_design/presentation/home/home_screen.dart';
import 'package:flutter_design/presentation/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
    initialLocation: '/',
    routes:[
      GoRoute(path: '/', builder: (context, state) => HomeScreen(),),
      GoRoute(path: '/buttons', builder: (context, state) => ButtonsScreen(),),
      GoRoute(path: '/cards', builder: (context, state) => CardScreen(),),
      GoRoute(path: '/progress', builder: (context, state) => ProgressScreen(),),
      GoRoute(path: '/snackbar', builder: (context, state) => SnackBarScreen())       
    ]
);