// main.dart

import 'package:flutter/material.dart';
import 'package:form_example/view_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Form(),
    );
  }
}

class Form extends StatefulWidget {
  const Form({Key? key}) : super(key: key);

  @override
  State<Form> createState() => _FormState();
}

class _FormState extends State<Form> {
  final _namecontroller = TextEditingController();
  final _identitynumbercontroller = TextEditingController();
  final _birthdatecontroller = TextEditingController();
  final _gendercontroller = TextEditingController();
  final _phonenumbercontroller = TextEditingController();
  final _lasteducationcontroller = TextEditingController();
  final _religioncontroller = TextEditingController();
  final _jobcontroller = TextEditingController();
  final _addresscontroller = TextEditingController();
  final _accounttypecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(3),
              child: TextField(
                key: const Key('nameField'),
                controller: _namecontroller,
                decoration: const InputDecoration(
                  labelText: 'Enter Your Name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: TextField(
                key: const Key('identityNumberField'),
                controller: _identitynumbercontroller,
                decoration: const InputDecoration(
                  labelText: 'Enter Your Identity Number',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: TextField(
                key: const Key('birthdateField'),
                controller: _birthdatecontroller,
                decoration: const InputDecoration(
                  labelText: 'Enter Your Birth Date',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: TextField(
                key: const Key('genderField'),
                controller: _gendercontroller,
                decoration: const InputDecoration(
                  labelText: 'Enter Your Gender',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: TextField(
                key: const Key('phoneNumberField'),
                keyboardType: TextInputType.phone,
                controller: _phonenumbercontroller,
                decoration: const InputDecoration(
                  labelText: 'Enter Your Phone Number',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: TextField(
                key: const Key('lastEducationField'),
                controller: _lasteducationcontroller,
                decoration: const InputDecoration(
                  labelText: 'Enter Your Last Education',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: TextField(
                key: const Key('religionField'),
                controller: _religioncontroller,
                decoration: const InputDecoration(
                  labelText: 'Enter Your Religion',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: TextField(
                key: const Key('jobField'),
                controller: _jobcontroller,
                decoration: const InputDecoration(
                  labelText: 'Enter Your Job',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: TextField(
                key: const Key('addressField'),
                controller: _addresscontroller,
                decoration: const InputDecoration(
                  labelText: 'Enter Your Address',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: TextField(
                key: const Key('accountTypeField'),
                controller: _accounttypecontroller,
                decoration: const InputDecoration(
                  labelText: 'Enter Your Account Type',
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  // Validate user input null
                  if (_namecontroller.text.isEmpty ||
                      _identitynumbercontroller.text.isEmpty ||
                      _birthdatecontroller.text.isEmpty ||
                      _gendercontroller.text.isEmpty ||
                      _phonenumbercontroller.text.isEmpty ||
                      _lasteducationcontroller.text.isEmpty ||
                      _religioncontroller.text.isEmpty ||
                      _jobcontroller.text.isEmpty ||
                      _addresscontroller.text.isEmpty ||
                      _accounttypecontroller.text.isEmpty) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Warning !!'),
                          content: const Text(
                              'Please, input all your data needed...'),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ViewPage(
                              name: _namecontroller.text,
                              identitynumber: _identitynumbercontroller.text,
                              birthdate: _birthdatecontroller.text,
                              gender: _gendercontroller.text,
                              phonenumber: _phonenumbercontroller.text,
                              lasteducation: _lasteducationcontroller.text,
                              religion: _religioncontroller.text,
                              job: _jobcontroller.text,
                              address: _addresscontroller.text,
                              accounttype: _accounttypecontroller.text,
                            )));
                  }
                },
                child: const Text('Submit Data'))
          ],
        ),
      ),
    );
  }
}
