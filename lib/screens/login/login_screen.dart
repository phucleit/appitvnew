import 'package:app_itv/constant/theme.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundLogin,
      body: SafeArea(
        child: Column(
          children: const [
            Text(
              'Xin chào quý khách',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'đến với IT Vũng Tàu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Kết nối với chúng tôi, IT Vũng Tàu sẽ giúp bạn giải quyết vấn đề',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}