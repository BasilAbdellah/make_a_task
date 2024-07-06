import 'package:flutter/material.dart';
import 'package:haha/HomeScreen/DotsIndicator.dart';
import 'package:haha/HomeScreen/MyCardsPageView.dart';
import 'package:haha/app_styles.dart';
class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});



  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
   int CurrentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();

    pageController.addListener((){
      CurrentPageIndex= pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 420,
              child: Text("My Card",style: AppStyles.styleSemiBold20(context),),

            ),
             const SizedBox(height: 20,),
             MyCardsPageView(pageController: pageController,),
             const SizedBox(height: 20,),
             DotsIndicator(CurrentPageIndex: CurrentPageIndex,),
          ],
        ),

    );
  }
}
