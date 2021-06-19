import 'package:flutter/material.dart';
import 'package:password_reset_flow_ui/check_email/check_email_view.dart';
import 'package:password_reset_flow_ui/util.dart';

class SendInstructionsView extends StatelessWidget {
  const SendInstructionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Back',
          style: TextStyle(color: Colors.black),
        ),
        leadingWidth: 30,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.help_outline),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Reset Password',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Enter the email associated with your account and we\'ll send an email with instructions to reset your password',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Email address',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 50,
              child: TextFormField(
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                    child: ElevatedButton(
                  onPressed: () {
                    //navigate to check email view
                    Util.routeToWidget(context, CheckEmailView());
                  },
                  child: Text(
                    'Send Instructions',
                    style: TextStyle(fontSize: 20),
                  ),
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
