import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class AddNewEmployeePage extends StatefulWidget {
  const AddNewEmployeePage({Key? key}) : super(key: key);

  @override
  State<AddNewEmployeePage> createState() => _AddNewEmployeePageState();
}

class _AddNewEmployeePageState extends State<AddNewEmployeePage> {
  final _formKey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();
  final _lastnameController = TextEditingController();
  final _firstnameController = TextEditingController();
  final _middleinitialController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _lastnameController.dispose();
    _firstnameController.dispose();
    _middleinitialController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Ionicons.return_down_back),
        ),
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Add new Employee",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  prefixIcon: Icon(Ionicons.person_outline),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a Username';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _lastnameController,
                decoration: const InputDecoration(
                  labelText: 'Lastname',
                  prefixIcon: Icon(Ionicons.person_add_outline),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a Lastname';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _firstnameController,
                decoration: const InputDecoration(
                  labelText: 'Firstname',
                  prefixIcon: Icon(Ionicons.person_add_outline),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a Firstname';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _middleinitialController,
                decoration: const InputDecoration(
                  labelText: 'Middle Initial',
                  prefixIcon: Icon(Ionicons.person_add_outline),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a Middle Initial';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Ionicons.lock_closed_outline),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a Password';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _usernameController.clear();
                      _lastnameController.clear();
                      _firstnameController.clear();
                      _middleinitialController.clear();
                      _passwordController.clear();
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Employee Has Been Added"),
                      ));
                    }
                  },
                  child: const Text('Add Employee'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
