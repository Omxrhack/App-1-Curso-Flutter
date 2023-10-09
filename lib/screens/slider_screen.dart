import 'package:flutter/material.dart';
import 'package:listflutter/theme/theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _setValueEn = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
              min: 50,
              max: 400,
              activeColor: TemaApp.colorPrincipal,
              value: _sliderValue,
              onChanged: _setValueEn
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Activar el Slaider value:'),
                Checkbox.adaptive(
                  value: _setValueEn,
                  onChanged: (value) {
                    _setValueEn = value ?? true;
                    setState(() {});
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text('Switch '),
                Switch.adaptive(
                  value: _setValueEn,
                  onChanged: (value) {
                    _setValueEn = value;
                    setState(() {});
                  },
                )
              ],
            ),
            Image(
              image: const NetworkImage(
                  'https://assets.stickpng.com/images/580b57fcd9996e24bc43c325.png'),
              fit: BoxFit.contain,
              width: _sliderValue,
            )
          ],
        ),
      ),
    );
  }
}
