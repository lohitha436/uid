import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: FormDemo()));

class FormDemo extends StatefulWidget {
  @override
  _FormDemoState createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  final formKey = GlobalKey<FormState>();
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form")),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              validator: (v) => v!.isEmpty ? "Enter name" : null,
            ),
            ElevatedButton(
                child: Text("Submit"),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text("Valid")));
                  }
                })
          ],
        ),
      ),
    );
  }
}
