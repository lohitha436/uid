//design a form with various inout fields implement form validation and error handling
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: RegistrationScreen()));

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _gender = 'Male';
  DateTime? _dob;
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      print('First Name: ${_firstNameController.text}');
      print('Last Name: ${_lastNameController.text}');
      print('Email: ${_emailController.text}');
      print('Phone: ${_phoneController.text}');
      print('Gender: $_gender');
      print('DOB: $_dob');
    }
  }

  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) setState(() => _dob = picked);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registration Form')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _firstNameController,
                decoration: InputDecoration(labelText: 'First Name'),
                validator: (value) => value!.isEmpty ? 'Enter your first name' : null,
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _lastNameController,
                decoration: InputDecoration(labelText: 'Last Name'),
                validator: (value) => value!.isEmpty ? 'Enter your last name' : null,
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) => !value!.contains('@') ? 'Enter a valid email' : null,
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(labelText: 'Phone Number'),
                keyboardType: TextInputType.phone,
                validator: (value) => value!.length != 10 ? 'Enter a 10-digit phone number' : null,
              ),
              SizedBox(height: 10),
              DropdownButtonFormField<String>(
                value: _gender,
                decoration: InputDecoration(labelText: 'Gender'),
                items: ['Male', 'Female', 'Other'].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
                onChanged: (value) => setState(() => _gender = value),
                validator: (value) => value == null ? 'Select your gender' : null,
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: _selectDate,
                child: IgnorePointer(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Date of Birth',
                      hintText: _dob == null ? 'Select Date' : _dob!.toLocal().toString().split(' ')[0],
                    ),
                    validator: (value) => _dob == null ? 'Select your date of birth' : null,
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) => value!.length < 6 ? 'Password must be at least 6 characters' : null,
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(labelText: 'Confirm Password'),
                obscureText: true,
                validator: (value) => value != _passwordController.text ? 'Passwords do not match' : null,
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: _submitForm, child: Text('Register'))
            ],
          ),
        ),
      ),
    );
  }
}
