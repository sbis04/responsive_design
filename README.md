# Responsive Layout in Flutter

**Flutter** being a cross-platform app development framework supports devices with hugely varying screen sizes, it can run on a device as small as a smartwatch to devices like a large TV. It's always a challenge to adapt your app to that variety of screen sizes and pixel densities using the same codebase. 

This repository contains demonstration of some important concepts that you can use while building a **responsive layout** in Flutter.

Also, a fully responsive sample Flutter app design called **Flow**, having split view is included in this repository.

![](https://github.com/sbis04/responsive_design/raw/master/screenshots/flow_cover.png)

## Widgets

Some important widgets you should know about while building a responsive layout in Flutter are as follows:

### 1. MediaQuery

You can use [MediaQuery](https://api.flutter.dev/flutter/widgets/MediaQuery-class.html) for retrieving the **size** (width/height) and **orientation** (portrait/landscape) of the screen.

An example of this is as follows:

```dart
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      body: Container(
        color: CustomColors.android,
        child: Center(
          child: Text(
            'View\n\n' +
                '[MediaQuery width]: ${screenSize.width.toStringAsFixed(2)}\n\n' +
                '[MediaQuery orientation]: $orientation',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
```

![](https://github.com/sbis04/responsive_design/raw/master/screenshots/flutter_layout_1.png)

### 2. LayoutBuilder

Using the [LayoutBuilder](https://api.flutter.dev/flutter/widgets/LayoutBuilder-class.html) class you can get the [BoxConstraints](https://api.flutter.dev/flutter/rendering/BoxConstraints-class.html) object, which can be used for determining the **maxWidth** and **maxHeight** of the widget.

> **REMEMBER:** The main difference between `MediaQuery` & `LayoutBuilder` is that **MediaQuery** uses the complete context of the screen rather than just the size of your particular widget. Whereas, **LayoutBuilder** can determine the maximum width and height of a particular widget.

An example demonstrating this is as follows:

```dart
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: LayoutBuilder(
              builder: (context, constraints) => Container(
                color: CustomColors.android,
                child: Center(
                  child: Text(
                    'View 1\n\n' +
                        '[MediaQuery]:\n ${screenSize.width.toStringAsFixed(2)}\n\n' +
                        '[LayoutBuilder]:\n${constraints.maxWidth.toStringAsFixed(2)}',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: LayoutBuilder(
              builder: (context, constraints) => Container(
                color: Colors.white,
                child: Center(
                  child: Text(
                    'View 2\n\n' +
                        '[MediaQuery]:\n ${screenSize.width.toStringAsFixed(2)}\n\n' +
                        '[LayoutBuilder]:\n${constraints.maxWidth.toStringAsFixed(2)}',
                    style: TextStyle(color: CustomColors.android, fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
```

![](https://github.com/sbis04/responsive_design/raw/master/screenshots/flutter_layout_2.png)

### 3. OrientationBuilder

To determine a widget's current orientation you can use the [OrientationBuilder](https://api.flutter.dev/flutter/widgets/OrientationBuilder-class.html) class.

> **REMEMBER:** This is different from the device orientation which you can retrieve using `MediaQuery`.

An example demonstrating this is as follows:

```dart
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Orientation deviceOrientation = MediaQuery.of(context).orientation;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: CustomColors.android,
              child: OrientationBuilder(
                builder: (context, orientation) => Center(
                  child: Text(
                    'View 1\n\n' +
                        '[MediaQuery orientation]:\n$deviceOrientation\n\n' +
                        '[OrientationBuilder]:\n$orientation',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: OrientationBuilder(
              builder: (context, orientation) => Container(
                color: Colors.white,
                child: Center(
                  child: Text(
                    'View 2\n\n' +
                        '[MediaQuery orientation]:\n$deviceOrientation\n\n' +
                        '[OrientationBuilder]:\n$orientation',
                    style: TextStyle(color: CustomColors.android, fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
```

![](https://github.com/sbis04/responsive_design/raw/master/screenshots/flutter_layout_3.png)

### 4. Expanded and Flexible

The widgets that are especially useful inside a `Column` or a `Row` are `Expanded` and `Flexible`. [Expanded](https://api.flutter.dev/flutter/widgets/Expanded-class.html) widget expands a child of a Row, Column, or Flex so that the child fills the available space, whereas [Flexible](https://api.flutter.dev/flutter/widgets/Flexible-class.html) does not necessarily have to fill the entire available space.

An example showing various combinations of `Expanded` and `Flexible` is as follows:

```dart
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                ExpandedWidget(),
                FlexibleWidget(),
              ],
            ),
            Row(
              children: [
                ExpandedWidget(),
                ExpandedWidget(),
              ],
            ),
            Row(
              children: [
                FlexibleWidget(),
                FlexibleWidget(),
              ],
            ),
            Row(
              children: [
                FlexibleWidget(),
                ExpandedWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ExpandedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: CustomColors.android,
          border: Border.all(color: Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Expanded',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}

class FlexibleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
          color: CustomColors.androidAccent,
          border: Border.all(color: Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Flexible',
            style: TextStyle(color: CustomColors.android, fontSize: 24),
          ),
        ),
      ),
    );
  }
}
```

![](https://github.com/sbis04/responsive_design/raw/master/screenshots/flutter_layout_4.png)

### 5. FractionallySizedBox

[FractionallySizedBox](https://api.flutter.dev/flutter/widgets/FractionallySizedBox-class.html) widget helps to sizes its child to a fraction of the total available space. It is especially useful inside `Expanded` or `Flexible` widgets.

An example is as follows:

```dart
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FractionallySizedWidget(widthFactor: 0.4),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FractionallySizedWidget(widthFactor: 0.6),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FractionallySizedWidget(widthFactor: 0.8),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FractionallySizedWidget(widthFactor: 1.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FractionallySizedWidget extends StatelessWidget {
  final double widthFactor;
  FractionallySizedWidget({@required this.widthFactor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FractionallySizedBox(
        alignment: Alignment.centerLeft,
        widthFactor: widthFactor,
        child: Container(
          decoration: BoxDecoration(
            color: CustomColors.android,
            border: Border.all(color: Colors.white),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '${widthFactor * 100}%',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
```

![](https://github.com/sbis04/responsive_design/raw/master/screenshots/flutter_layout_5.png)

### 6. AspectRatio

You can use [AspectRatio](https://api.flutter.dev/flutter/widgets/AspectRatio-class.html) widget to size the child to a specific aspect ratio. First of all, it tries the largest width permitted by the layout constraints and decides the height by applying the given aspect ratio to the width.

```dart
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            AspectRatioWidget(ratio: '16 / 9'),
            AspectRatioWidget(ratio: '3 / 2'),
          ],
        ),
      ),
    );
  }
}

class AspectRatioWidget extends StatelessWidget {
  final String ratio;

  AspectRatioWidget({@required this.ratio});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Fraction.fromString(ratio).toDouble(),
      child: Container(
        decoration: BoxDecoration(
          color: CustomColors.android,
          border: Border.all(color: Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              'AspectRatio - $ratio',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
```

![](https://github.com/sbis04/responsive_design/raw/master/screenshots/flutter_layout_6.png)

## Plugins

Some of the amazing Flutter plugins that you can use while building a responsive layout are as follows:

* [device_preview](https://pub.dev/packages/device_preview)
* [breakpoint](https://pub.dev/packages/breakpoint)
* [responsive_builder](https://pub.dev/packages/responsive_builder)
* [responsive_framework](https://pub.dev/packages/responsive_framework)

## License

Copyright (c) 2020 Souvik Biswas

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
