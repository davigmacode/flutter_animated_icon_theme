[![Pub Version](https://img.shields.io/pub/v/animated_icon_theme)](https://pub.dev/packages/animated_icon_theme) ![GitHub](https://img.shields.io/github/license/davigmacode/flutter_animated_icon_theme) [![GitHub](https://badgen.net/badge/icon/buymeacoffee?icon=buymeacoffee&color=yellow&label)](https://www.buymeacoffee.com/davigmacode) [![GitHub](https://badgen.net/badge/icon/ko-fi?icon=kofi&color=red&label)](https://ko-fi.com/davigmacode)

A widget that provides a smooth animated icon theme data implicitly.

[![Preview](https://github.com/davigmacode/flutter_animated_icon_theme/raw/main/media/preview.gif)](https://davigmacode.github.io/flutter_animated_icon_theme)

[Demo](https://davigmacode.github.io/flutter_animated_icon_theme)

## Usage

To read more about classes and other references used by `animated_icon_theme`, see the [API Reference](https://pub.dev/documentation/animated_icon_theme/latest/).

```dart
AnimatedIconTheme(
  curve: Curves.linear,
  duration: const Duration(milliseconds: 200),
  data: IconThemeData(
    color: _color,
    opacity: _opacity,
    size: _size,
  ),
  child: const Wrap(
    spacing: 5,
    children: [
      Icon(Icons.bookmark),
      Icon(Icons.favorite),
      Icon(Icons.star),
    ],
  ),
)
```

## Sponsoring

<a href="https://www.buymeacoffee.com/davigmacode" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" height="45"></a>
<a href="https://ko-fi.com/davigmacode" target="_blank"><img src="https://storage.ko-fi.com/cdn/brandasset/kofi_s_tag_white.png" alt="Ko-Fi" height="45"></a>

If this package or any other package I created is helping you, please consider to sponsor me so that I can take time to read the issues, fix bugs, merge pull requests and add features to these packages.