import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "HomeScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://example.com/user_image.png', // Replace with actual image URL
                ),
              ),
              title: Text('المهارات اللازمة للإدارة المالية'),
              subtitle: Text(
                'تعرف على أهم المهارات اللازمة لكي تحترف في مجال الإدارة المالية.',
              ),
            ),
            SizedBox(height: 20),
            Text('هل تريد الحصول على استشارة مع أفضل المختصين؟'),
            ListTile(
              title: Text('استشارة فورية'),
              subtitle: Text(
                'هل تريد استشارة الأن؟ اضغط للحصول على استشارة فورية!',
              ),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
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
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.more_horiz),
                    Text('المزيد'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.calendar_today),
                    Text('حجوزاتي'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.home),
                    Text('مالكاست'),
                  ],
                ),
              ],
            ),
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
