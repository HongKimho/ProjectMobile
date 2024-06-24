
import 'package:chat_app/data/color.dart';
import 'package:flutter/material.dart';

class VerifySMSotp extends StatefulWidget {
  const VerifySMSotp({super.key});

  @override
  State<VerifySMSotp> createState() => _VerifySMSotpState();
}

class _VerifySMSotpState extends State<VerifySMSotp> {
  final TextEditingController _codeController = TextEditingController();
  int _timer = 60;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    Future.delayed(const Duration(seconds: 1), () {
      if (_timer > 0) {
        setState(() {
          _timer--;
        });
        _startTimer();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      // Body
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Verification code',
              //style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white),
              style: TextStyle(color: ColorUse.text, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                style: TextStyle(color: Colors.white70, fontSize: 16),
                children: [
                  TextSpan(text: 'Enter the code we sent to ', style: TextStyle(color: ColorUse.text)),
                  TextSpan(
                    text: '+855 11 111 111',
                    style: TextStyle(color: Colors.orange),
                  ),
                ],
              ),
            ),

            
            // Container(
            //   child: Text(
            //     'Enter the code we sent to' '+855 11 111 111',
                
            //     //style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Colors.white70),
            //     style: TextStyle(color: ColorUse.text, fontSize: 16),
            //     textAlign: TextAlign.start,
            //   ),
            // ),
            
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(6, (index) {
                return Container(
                  width: 40,
                  height: 50,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 2, color: Colors.white),
                    ),
                  ),

                  child: Center(
                    child: Text(
                      _codeController.text.length > index
                          ? _codeController.text[index]
                          : '',
                      style: const TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(height: 20),
            if (_timer > 0)
              Text(
                'Resend Code in 0:${_timer.toString().padLeft(2, '0')}',
                //style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Colors.white70),
                style: const TextStyle(color: ColorUse.text),
              )
            else
              TextButton(
                onPressed: () {
                  setState(() {
                    _timer = 60;
                    _startTimer();
                  });
                },
                child: const Text(
                  'Resend Code',
                  style: TextStyle(color: Colors.blue),
                ),
              ),

            /*const SizedBox(height: 20), // Button resend code OTP
            TextButton(
              onPressed: () {},
              child: Text(
                'Resent in 0:${_timer.toString().padLeft(2, '0')}',
                style: const TextStyle(color: Colors.blue),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
