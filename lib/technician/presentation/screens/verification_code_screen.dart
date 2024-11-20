import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Verificationcode extends StatefulWidget {
  const Verificationcode({super.key});

  @override
  State<Verificationcode> createState() => _VerificationcodeState();
}

class _VerificationcodeState extends State<Verificationcode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70, left: 25),
              child: Image.asset(
                'assets/images/logo.png',
                scale: 1,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Verification\nCode',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Form(
                child: Column(
                  children: [
                    PinCodeTextField(
                      appContext: context,
                      length: 4,
                      onChanged: (value) {
                        print(value);
                      },
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(9.5),
                        fieldHeight: 93,
                        fieldWidth: 73,
                        inactiveColor: Colors.grey.shade300,
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 25),
                    const Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "00:20 resend confirmation code.",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    InkWell(
                      onTap: () {
                        // Navigate to the new password screen
                        Navigator.pushNamed(context, '/new-password');
                      },
                      child: Container(
                        height: 55,
                        width: 445,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color(0Xff262263),
                        ),
                        child: const Center(
                          child: Text(
                            "Confirm Code",
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                              backgroundColor: Color(0Xff262263),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
