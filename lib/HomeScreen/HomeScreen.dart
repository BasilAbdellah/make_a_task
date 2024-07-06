import 'package:flutter/material.dart';
import 'package:haha/HomeScreen/MyCardsSection.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "HomeScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent.withOpacity(0.15),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyCardsSection(),
            // ListTile(
            //   contentPadding: EdgeInsets.zero,
            //   leading: CircleAvatar(
            //     backgroundImage: NetworkImage(
            //       'https://example.com/user_image.png', // Replace with actual image URL
            //     ),
            //   ),
            //   title: Text('المهارات اللازمة للإدارة المالية'),
            //   subtitle: Text(
            //     'تعرف على أهم المهارات اللازمة لكي تحترف في مجال الإدارة المالية.',
            //   ),
            // ),
            SizedBox(height: 20),
            Text('هل تريد الحصول على استشارة مع أفضل المختصين؟'),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.green)
              ),
              child: ListTile(
                title: Text('استشارة فورية'),
                subtitle: Text(
                  'هل تريد استشارة الأن؟ اضغط للحصول على استشارة فورية!',
                ),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {},
              ),
            ),
            ListTile(
              title: Text('استشارة مجدولة'),
              subtitle: Text(
                'هل تريد حجز استشارة في وقت ما؟ اضغط لاختيار الوقت المناسب لك!',
              ),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            ListTile(
              title: Text('المساعد الذكي'),
              subtitle: Text(
                'احصل على المساعدة من مساعدك الذكي',
              ),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            SizedBox(height: 20),
            Text(
              'هذه المرة الأولى لك في تطبيق مالكاست؟ اضغط هنا للحصول على أول استشارة مجانية.',
              style: TextStyle(color: Colors.blue),
            ),
            BottomNavigationBar(
                backgroundColor: Colors.greenAccent.withOpacity(0.15),
                items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),  label:"مالكاست" ),
              BottomNavigationBarItem(icon: Icon(Icons.calendar_today) , label:"حجوزاتي" ),
              BottomNavigationBarItem(icon:  Icon(Icons.more_horiz) ,label: 'المزيد' ),

            ])
            // SizedBox(height: 20),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     Column(
            //       children: [
            //         Icon(Icons.more_horiz),
            //         Text('المزيد'),
            //       ],
            //     ),
            //     Column(
            //       children: [
            //         Icon(Icons.calendar_today),
            //         Text('حجوزاتي'),
            //       ],
            //     ),
            //     Column(
            //       children: [
            //         Icon(Icons.home),
            //         Text('مالكاست'),
            //       ],
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
