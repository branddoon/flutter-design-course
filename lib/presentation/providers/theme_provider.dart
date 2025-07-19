import 'package:flutter_design/config/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final isDarkModeProvider = StateProvider((ref) => false);

final colorListProvider = Provider((ref)=>colorList);

final selectedColorProvider = StateProvider((ref) => 0);
