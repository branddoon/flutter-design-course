import 'package:flutter_design/presentation/screens/home/home_screen.dart';
import 'package:flutter_design/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
    initialLocation: '/',
    routes:[
      GoRoute(path: '/', builder: (context, state) => HomeScreen(),),
      GoRoute(path: '/buttons', builder: (context, state) => ButtonsScreen(),),
      GoRoute(path: '/cards', builder: (context, state) => CardScreen(),),
      GoRoute(path: '/progress', builder: (context, state) => ProgressScreen(),),
      GoRoute(path: '/snackbar', builder: (context, state) => SnackBarScreen()),
      GoRoute(path: '/slide', builder: (context, state) => SlideScreen()),        
      GoRoute(path: '/animated', builder: (context, state) => AnimatedScreen()),
      GoRoute(path: '/ui-controls', builder: (context, state) => UiControlsScreen()),
      GoRoute(path: '/scroll', builder: (context, state) =>ScrollScreen()),          
      GoRoute(path: '/counter', builder: (context, state) =>CounterScreen()),      
      GoRoute(path: '/theme', builder: (context, state) =>ThemeScreen())                   
    ]
);