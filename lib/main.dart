import 'package:flutter/material.dart';
import 'package:temp/route/route_generator.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

// var charItem25 = Charcoal(name: "Crown25");
// var charItem26 = Charcoal(name: "Crown26");
// print(charItem25 == charItem26);
//
// var map = {'name'};
// var model = charItem25.toJson();
// print(model);
// WidgetsFlutterBinding.ensureInitialized();
// await Hive.initFlutter();
// const app = MyApp();
// runApp(app);
//}
//   AppConfig.create(
//     appName: "Prod Flavor Example",
//     baseUrl: "https://dwirandyh.com",
//     primaryColor: Colors.yellow,
//     flavor: Flavor.prod,
//   );
//   runApp(const MyApp1());
// }
//
// class MyApp1 extends StatelessWidget {
//   const MyApp1({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo Production',
//       theme: ThemeData(
//         primarySwatch: AppConfig.shared.primaryColor,
//       ),
//       home: const HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         foregroundColor: Colors.blue,
//         centerTitle: true,
//         title: Text(AppConfig.shared.appName),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Имя приложения: ${AppConfig.shared.appName}"),
//             Text("Базовый URL: ${AppConfig.shared.baseUrl}"),
//             Text("some things: ${AppConfig.shared.primaryColor}"),
//             Text("Вариант: ${AppConfig.shared.flavor}"),
//           ],
//         ),
//       ),
//     );
//   }
// }

// var actor1 = Actor(name: "Alexandr Petrov", age: 33);
// var actor2 = Actor(name: "Alexandr Petrov", age: 33);
//
// print(actor1 == actor2);
//
// final actor1Copy = actor1.copyWith(name: "Sergei Burunov");
// print("actor1Copy :$actor1Copy");
//
// var master1 = Master(surname: "asfa", age: 13);
// var master2 = Master(surname: "asfa", age: 13);
// print(master2 == master1);
//
// var master1Copy = master1.copyWith(surname: "Beglov", age: 22);
// print(master1Copy);
// print(master1Copy == master1);
