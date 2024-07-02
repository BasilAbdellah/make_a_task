import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "LoginScreen";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Country? _selectedCountry;
  String? selectedRole;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const  Text(
              'أهلاً بك مجددًا في تطبيق مالكاست!',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                showCountryPicker(
                  context: context,
                  showPhoneCode: true,
                  onSelect: (Country country) {
                    setState(() {
                      _selectedCountry = country;
                    });
                  },
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      _selectedCountry != null
                          ? '${_selectedCountry!.flagEmoji} ${_selectedCountry!.name}'
                          : 'الدولة/المنطقة',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'رقم الجوال',
                prefixText: _selectedCountry != null ? '(${_selectedCountry!.phoneCode}) ' : '',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the HomeScreen
                Navigator.pushNamed(context, '/home');
              },
              child: Text('استمرار'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
            ),
            const SizedBox(height: 20),
            const Text.rich(
              TextSpan(
                text: 'بالضغط على استمرار توافق على ',
                children: [
                  TextSpan(
                    text: 'الشروط و سياسة الخصوصية',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
           const  SizedBox(height: 20),
            const Text.rich(
              TextSpan(
                text: 'ليس لديك حساب؟ ',
                children: [
                  TextSpan(
                    text: 'اضغط هنا',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
           const  Text('هل انت؟'),
            ListTile(
              title: const Text('مستفيد'),
              leading: Radio(
                value: 'مستفيد',
                groupValue: selectedRole,
                activeColor: Colors.green,
                onChanged: (value) {
                  setState(() {
                    selectedRole = value.toString();
                  });
                },
              ),
            ),
            ListTile(
              title:const  Text('مستشار'),
              leading: Radio(
                value: 'مستشار',
                groupValue: selectedRole,
                activeColor: Colors.green,
                onChanged: (value) {
                  setState(() {
                    selectedRole = value.toString();
                  });},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
