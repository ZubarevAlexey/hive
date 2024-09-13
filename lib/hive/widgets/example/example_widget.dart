import 'package:flutter/material.dart';
import 'package:temp/hive/widgets/charcoal/charcoal_widget_model.dart';

// class ExampleWidget extends StatefulWidget {
//   ExampleWidget({Key? key}) : super(key: key);
//
//   @override
//   _ExampleWidgetState createState() => _ExampleWidgetState();
// }
//
// class _ExampleWidgetState extends State<ExampleWidget> {
//   final model = UniversityWidgetModel();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: ElevatedButton(
//             onPressed: model.some,
//             child: const Text('Жми меня'),
//           ),
//         ),
//       ),
//     );
//   }
// }

class ExampleWidget extends StatefulWidget {
  const ExampleWidget({super.key});

  @override
  State<ExampleWidget> createState() => _ExampleWidgetState();
}

class _ExampleWidgetState extends State<ExampleWidget> {
  @override
  Widget build(BuildContext context) {
    final model = CharcoalWidgetModel();
    return Scaffold(
      appBar: AppBar(
        title: Text("HiveExample"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: SafeArea(
          child: Center(
        child: ElevatedButton(onPressed: model.buy, child: Text("Push Me")),
      )),
    );
  }
}
