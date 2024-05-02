import 'package:flutter/material.dart';
import 'package:task/dashboard/module/repo/local_db_data.dart';

class RequestPage extends StatefulWidget {
  const RequestPage({Key? key}) : super(key: key);

  @override
  _RequestPageState createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  bool isAdded = false;

  Future<void> insertUser() async {
    final repo = await DatabaseRepo.instance;
    await repo.insert(
        name: nameController.text, address: addressController.text);
  }

  String? validateInput(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Request Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                errorText: validateInput(nameController.text),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: addressController,
              decoration: InputDecoration(
                labelText: 'Address',
                errorText: validateInput(addressController.text),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                // Validate input before insertion
                if (validateInput(nameController.text) == null &&
                    validateInput(addressController.text) == null) {
                  await insertUser();
                  setState(() {
                    isAdded = true;
                  });
                  Navigator.pop(context,
                      true); // Return true to indicate successful addition
                }
              },
              child: Text('Add'),
            ),
            SizedBox(height: 20),
            if (isAdded)
              Text(
                'Successfully added!',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
