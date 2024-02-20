import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/theme/app_theme.dart';

// listado de colores inmutable
final coloListProvider = Provider((ref) => colorList);

final isDarkModeProvider = StateProvider((ref) => false);
final selectedColorProvider = StateProvider((ref) => 0);

final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

class ThemeNotifier extends StateNotifier<AppTheme> {
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWidth(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int newIndex) {
    state = state.copyWidth(selectedColor: newIndex);
  }
}
