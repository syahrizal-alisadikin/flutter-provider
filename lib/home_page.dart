import 'dart:math';

import 'package:flutter/material.dart';
import 'provider_weight.dart';
import 'provider_height.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  // provider context
  Widget build(BuildContext context) {
    var newHeight = Provider.of<ProviderHeight>(context);
    var newWeight = Provider.of<ProviderWeight>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Syahrizal As",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.red,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              'Weight (kg)',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            // Note Provider Consumer
            // Consumer<ProviderWeight>(
            //   builder: (context, newWeight, _) => Slider(
            //     value: newWeight.weight,
            //     onChanged: (newValue) {
            //       newValue = newValue.roundToDouble();
            //       newWeight.weight = newValue;
            //     },
            //     min: 1,
            //     max: 100,
            //     divisions: 100,
            //     label: newWeight.weight.round().toString(),
            //     activeColor: Colors.blue,
            //     inactiveColor: Colors.blue.withOpacity(0.3),
            //   ),
            // ),
            //note provider of context
            Slider(
              value: newWeight.weight,
              onChanged: (newValue) {
                newValue = newValue.roundToDouble();
                newWeight.weight = newValue;
              },
              min: 1,
              max: 100,
              divisions: 100,
              label: newWeight.weight.round().toString(),
              activeColor: Colors.blue,
              inactiveColor: Colors.blue.withOpacity(0.3),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Height (cm)',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            //provider Consumer
            // Consumer<ProviderHeight>(
            //   builder: (context, newHeight, _) => Slider(
            //     value: newHeight.height,
            //     divisions: 200,
            //     label: newHeight.height.round().toString(),
            //     onChanged: (newValue) {
            //       newValue = newValue.roundToDouble();
            //       newHeight.height = newValue;
            //     },
            //     min: 1,
            //     max: 200,
            //     activeColor: Colors.pink,
            //     inactiveColor: Colors.pink.withOpacity(0.3),
            //   ),
            // ),

            //provider of context
            Slider(
              value: newHeight.height,
              divisions: 200,
              label: newHeight.height.round().toString(),
              onChanged: (newValue) {
                newValue = newValue.roundToDouble();
                newHeight.height = newValue;
              },
              min: 1,
              max: 200,
              activeColor: Colors.pink,
              inactiveColor: Colors.pink.withOpacity(0.3),
            ),
            const SizedBox(
              height: 50,
            ),
            // Consumer<ProviderWeight>(
            //   builder: (context, newWeight, _) => Consumer<ProviderHeight>(
            //     builder: (context, newHeight, _) => Text(
            //       "Your BMI : \n ${(newWeight.weight / (pow(newHeight.height / 100, 2))).toStringAsFixed(2)}",
            //       style: const TextStyle(
            //         fontSize: 24,
            //         fontWeight: FontWeight.w500,
            //       ),
            //       textAlign: TextAlign.center,
            //     ),
            //   ),
            // )
            Text(
              "Your BMI : \n ${(newWeight.weight / (pow(newHeight.height / 100, 2))).toStringAsFixed(2)}",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
