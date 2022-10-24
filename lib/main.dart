import 'package:flutter/material.dart';
import 'package:raja_ongkir/views/pages/pages.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Raja Ongkir'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Raja Ongkir',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: sendEmail(),
    );


    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text(widget.title),
    //
    //   ),
    //
    //
    //   // floatingActionButton: FloatingActionButton(
    //   //   onPressed: () async{
    //   //     await RajaOngkirService.getOngkir().then((value) {
    //   //       var result = json.decode(value.body);
    //   //       print(result.toString());
    //   //     });
    //   //   },
    //   //   tooltip: 'Increment',
    //   //   child: const Icon(Icons.add),
    //   // ), // This trailing comma makes auto-formatting nicer for build methods.
    // );
  }
}
