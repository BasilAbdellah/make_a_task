import 'package:flutter/material.dart';
import 'package:haha/HomeScreen/CustomDotsIndicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.CurrentPageIndex});
  final int CurrentPageIndex ;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:
        List.generate(7, (index) {
          return  Padding(padding: const EdgeInsets.only(right: 6),
          child: CustomDotsIndicator(isActive: index==CurrentPageIndex),
          );
        },)

    );
  }
}
