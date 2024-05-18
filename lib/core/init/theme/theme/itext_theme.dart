part of '../app_theme.dart';

abstract class ITextTheme {
  /// Largest of the title styles.
  ///
  /// Titles are smaller than headline styles and should be used for shorter,
  /// medium-emphasis text.
  ///
  /// Example:
  ///
  ///  ![](https://i.ibb.co/WPfJJ3C/Slice-3.png)
  ///
  late final TextStyle titleLarge;

  /// Middle size of the title styles.
  ///
  /// Titles are smaller than headline styles and should be used for shorter,
  /// medium-emphasis text.
  ///
  /// Example:
  ///
  ///  ![](https://i.ibb.co/WPfJJ3C/Slice-3.png)
  ///
  late final TextStyle titleMedium;

  /// Smallest of the title styles.
  ///
  /// Titles are smaller than headline styles and should be used for shorter,
  /// medium-emphasis text.
  ///
  /// Example:
  ///
  ///  ![](https://i.ibb.co/WPfJJ3C/Slice-3.png)
  ///
  late final TextStyle titleSmall;

  /// Largest of the body styles.
  ///
  /// Body styles are used for longer passages of text.
  ///
  /// Example:
  ///
  /// ![](https://i.ibb.co/cQVGGpn/Slice-3-3.png)
  ///
  late final TextStyle bodyLarge;

  /// Middle size of the body styles.
  ///
  /// Body styles are used for longer passages of text.
  ///
  /// The default text style for [Material].
  ///
  /// Example:
  ///
  /// ![](https://i.ibb.co/cQVGGpn/Slice-3-3.png)
  ///
  late final TextStyle bodyMedium;

  /// Smallest of the body styles.
  ///
  /// Body styles are used for longer passages of text.
  ///
  /// Example:
  ///
  /// ![](https://i.ibb.co/cQVGGpn/Slice-3-3.png)
  ///
  late final TextStyle bodySmall;

  /// Largest of the label styles.
  ///
  /// Label styles are smaller, utilitarian styles, used for areas of the UI
  /// such as text inside of components or very small supporting text in the
  /// content body, like captions.
  ///
  /// Used for text on [ElevatedButton], [TextButton] and [OutlinedButton].
  ///
  /// Example:
  ///
  /// ![](https://i.ibb.co/8XtLVTW/Slice-3-2.png)
  ///
  late final TextStyle labelLarge;

  /// Middle size of the label styles.
  ///
  /// Label styles are smaller, utilitarian styles, used for areas of the UI
  /// such as text inside of components or very small supporting text in the
  /// content body, like captions.
  ///
  /// Example:
  ///
  /// ![](https://i.ibb.co/8XtLVTW/Slice-3-2.png)
  ///
  late final TextStyle labelMedium;

  /// Smallest of the label styles.
  ///
  /// Label styles are smaller, utilitarian styles, used for areas of the UI
  /// such as text inside of components or very small supporting text in the
  /// content body, like captions.
  ///
  /// Example:
  ///
  /// ![](https://i.ibb.co/8XtLVTW/Slice-3-2.png)
  ///
  late final TextStyle labelSmall;

  TextTheme get theme;
}

/// All of them
/// ![](https://i.ibb.co/SdZHpR5/unnamed.png)
///
