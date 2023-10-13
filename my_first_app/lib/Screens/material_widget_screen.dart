import 'package:flutter/material.dart';
import 'package:my_first_app/utils/utils.dart';

enum Gender { male, female, other }

class MaterialScreen extends StatefulWidget {
  const MaterialScreen({super.key});

  @override
  State<MaterialScreen> createState() => _MaterialScreenState();
}

class _MaterialScreenState extends State<MaterialScreen> {
  // Gender selectedGender = Gender.male;
  int selectedGender = 1;
  double currentSliderValue = 10;
  bool light = true;
  String? date;
  // late bool light;
  @override
  void initState() {
    super.initState();
    // light = Myshared();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: light ? Colors.white : Colors.black,
      appBar: AppBar(
        title: const Text('Material widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: Text(date ?? 'Date picker'),
              onTap: () async {
                final pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now().subtract(const Duration(days: 600)),
                  lastDate: DateTime.now().add(const Duration(days: 600)),
                );
                final finalDate =
                    '${pickedDate!.day}/${pickedDate.month}/${pickedDate.year}';
                setState(() {
                  date = finalDate;
                });
              },
            ),
            const SizedBox(height: 40),
            const Badge(
              backgroundColor: Colors.green,
              label: Text('2'),
              child: Icon(Icons.shopping_cart),
            ),
            IconButton(
              onPressed: () {
                Utils.snackbar('text');
              },
              icon: const Icon(Icons.shopping_cart),
            ),
            const Chip(
              label: Text('chip buttom'),
            ),
            RadioListTile(
              title: const Text('Male'),
              value: 1,
              groupValue: selectedGender,
              onChanged: (value) {
                setState(() {
                  selectedGender = value!;
                });
              },
            ),
            RadioListTile(
              title: const Text('female'),
              value: 2,
              groupValue: selectedGender,
              onChanged: (value) {
                setState(() {
                  selectedGender = value!;
                });
              },
            ),
            RadioListTile(
              title: const Text('other'),
              value: 3,
              groupValue: selectedGender,
              onChanged: (value) {
                setState(() {
                  selectedGender = value!;
                });
              },
            ),
            Slider(
              value: currentSliderValue,
              max: 1000,
              divisions: 50,
              label: currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  currentSliderValue = value;
                });
              },
            ),
            Switch(
              inactiveThumbColor: Colors.amber,
              activeColor: Colors.cyan,
              value: light,
              onChanged: (bool value) {
                setState(() {
                  light = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
