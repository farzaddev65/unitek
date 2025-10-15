part of 'core.dart';

class AppConstants {
  static const String theme = "theme";
  static const String darkTheme = "darkTheme";
  static const String lightTheme = "lightTheme";

  static Decoration? customDecoration({double? borderRadius})=>BoxDecoration(
    borderRadius: BorderRadius.circular(borderRadius ?? 8),
    color: context.theme.scaffoldBackgroundColor,
    border: Border.all(color: context.theme.primaryColorDark, width: 1),
  );
}
