import 'package:flutter/material.dart';
import 'package:temp/data/loacal/db/app_db.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late AppDb _db;

  @override
  void initState() {
    super.initState();
    _db = AppDb();
  }

  @override
  void dispose() {
    _db.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text("HomeScreen"),
      ),
      body: FutureBuilder<List<EmployeeData>>(
        future: _db.getEmployees(),
        builder: (context, snapshot) {
          final List<EmployeeData>? employees = snapshot.data;
          if (snapshot.connectionState != ConnectionState.done) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          }
          if (employees != null) {
            return ListView.builder(
              itemCount: employees.length,
              itemBuilder: (context, index) {
                final employee = employees[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/edit_employee",
                        arguments: employee.id);
                  },
                  child: Card(
                    color: Colors.grey,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.black,
                            width: 1.2,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16))),
                    child: Column(
                      children: [
                        Text(employee.id.toString()),
                        Text(employee.userName.toString()),
                        Text(employee.firstName.toString()),
                        Text(employee.lastName.toString()),
                        Text(employee.dateOfBirth.toString()),
                      ],
                    ),
                  ),
                );
              },
            );
          }
          return const Text("No data found");
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.pushNamed(context, '/add_employee');
        },
        icon: Icon(Icons.add),
        label: const Text('Add Employee'),
      ),
    );
  }
}
