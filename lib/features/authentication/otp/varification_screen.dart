//   Write by BALY
import 'package:flutter/material.dart';
import '../../../core/widgets/components.dart';

class VerificationScreen extends StatelessWidget {
  var verificationCode = TextEditingController();
  final labelMessage =
      'We sent you verification code on your number check it out to continue signing up';
  final colorButtonVerify = 0xFFF5B53F;
  String labelCode = 'Code ';
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              key: formKey,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /********* Text Verification******** */
                const Text(
                  'Verification ',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  labelMessage,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                ////////////////////////
                const SizedBox(
                  height: 20,
                ),
                /**************** email image ************************/
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Center(
                    child: CircleAvatar(
                      backgroundColor: Color(0xEEE),
                      radius: 90,
                      child: Image(
                        image: AssetImage(
                          'assets/image/email.png',
                        ),
                      ),
                    ),
                  ),
                ),
                /********* TextFormField Code******** */

                textFormField(
                  controller: verificationCode,
                  keyboardType: TextInputType.number,
                  label: labelCode,
                  maxLength: 6,
                  radius: 20,
                  labelSized: 18,
                ),
                ///////////////////////////////
                const SizedBox(
                  height: 20,
                ),
                /********* Verify Button ******** */
                Container(
                  width: double.infinity,
                  height: 50,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Color(colorButtonVerify))),
                    color: Color(colorButtonVerify),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        print(verificationCode.text);
                      }
                    },
                    child: const Text(
                      'Verify',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    elevation: 20,
                  ),
                ),
                /************* send message again ****************/
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text("Send message again ? "),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Click here "),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
