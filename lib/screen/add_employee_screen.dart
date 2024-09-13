import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:temp/data/loacal/db/app_db.dart';
import 'package:temp/screen/widget/custom_text_form_field.dart';

class AddEmployeeScreen extends StatefulWidget {
  const AddEmployeeScreen({super.key});

  @override
  State<AddEmployeeScreen> createState() => _AddEmployeeScreenState();
}

class _AddEmployeeScreenState extends State<AddEmployeeScreen> {
  late AppDb _db;
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _dateOfBirthController = TextEditingController();
  DateTime? _dateOfBirth;

  @override
  void initState() {
    super.initState();
    _db = AppDb();
  }

  @override
  void dispose() {
    _db.close();
    _userNameController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _dateOfBirthController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("Add employee"),
        actions: [
          IconButton(
            onPressed: () {
              final entity = EmployeeCompanion(
                userName: drift.Value(_userNameController.text),
                firstName: drift.Value(_firstNameController.text),
                lastName: drift.Value(_lastNameController.text),
                dateOfBirth: drift.Value(_dateOfBirth!),
              );
              _db.insertEmployee(entity).then((value) =>
                  ScaffoldMessenger.of(context).showMaterialBanner(
                      MaterialBanner(
                          backgroundColor: Colors.red,
                          content: Text("New Employee inserted: $value"),
                          actions: [
                        TextButton(
                            onPressed: () => ScaffoldMessenger.of(context)
                                .hideCurrentMaterialBanner(),
                            child: const Text("Close"))
                      ])));
            },
            icon: const Icon(Icons.save),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomTextFormField(
              controller: _userNameController,
              txtLabel: "User Name",
            ),
            const SizedBox(height: 8),
            CustomTextFormField(
                controller: _firstNameController, txtLabel: "First Name"),
            SizedBox(height: 8),
            CustomTextFormField(
                controller: _lastNameController, txtLabel: "Last Name"),
            SizedBox(height: 8),
            // CustomDatePickerFormField(
            //     controller: _dateOfBirthController,
            //     txtLabel: "Date of Birth",
            //     callback: () {
            //       pickDateOfBirth(context);
            //     }),
            TextFormField(
              decoration: InputDecoration(
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  label: Text("date of birth")),
              controller: _dateOfBirthController,
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Date of Birth cant be empty';
                }
                return null;
              },
              onTap: () => pickDateOfBirth(context),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  Future<void> pickDateOfBirth(BuildContext context) async {
    final initialDay = DateTime.now();
    final newDate = await showDatePicker(
        initialDate: _dateOfBirth ?? initialDay,
        context: context,
        firstDate: DateTime(DateTime.now().year - 100),
        lastDate: DateTime(DateTime.now().year + 1),
        builder: (context, child) => Theme(
              data: ThemeData().copyWith(
                  colorScheme: const ColorScheme.light(
                      primary: Colors.red,
                      onPrimary: Colors.white,
                      onSurface: Colors.black),
                  dialogBackgroundColor: Colors.green),
              child: child ?? const Text(''),
            ));

    if (newDate == null) {
      return;
    }
    setState(() {
      _dateOfBirth = newDate;
      String dob = DateFormat('dd/MM/yyyy').format(newDate);
      _dateOfBirthController.text = dob;
    });
  }
}
