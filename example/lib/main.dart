import 'package:flutter/material.dart';
import 'package:animated_icon_theme/animated_icon_theme.dart';
import 'package:animated_checkmark/animated_checkmark.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Icon Theme',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
      home: const MyHomePage(title: 'Animated Icon Theme'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _size = 64;
  double _opacity = 1.0;
  Color? _color;

  void setColor(Color color) {
    setState(() => _color = color);
  }

  void setSize(double size) {
    setState(() => _size = size);
  }

  void setOpacity(double opacity) {
    setState(() => _opacity = opacity);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedIconTheme(
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
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 250,
              child: Slider(
                value: _size,
                max: 200,
                min: 10,
                label: _size.round().toString(),
                onChanged: setSize,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 250,
              child: Slider(
                value: _opacity,
                max: 1,
                min: 0,
                label: _opacity.round().toString(),
                onChanged: setOpacity,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 200,
              alignment: Alignment.center,
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: Colors.primaries.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2,
                  crossAxisCount: 6,
                ),
                itemBuilder: (_, i) {
                  final color = Colors.primaries[i];
                  return Card(
                    color: color,
                    child: InkWell(
                      onTap: () => setColor(color),
                      child: AnimatedCheckmark(
                        weight: 4,
                        color: Colors.white70,
                        value: _color == color,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
