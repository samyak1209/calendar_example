import 'package:calendar_example/vertical_calendar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<DateTime> _glucoseAndLogsData=[DateTime.parse('2021-04-16 00:00:00.000'),DateTime.parse('2021-04-19 00:00:00.000'),DateTime.parse('2021-04-22 00:00:00.000')];
  List<DateTime> _glucoseData=[DateTime.parse('2021-05-17 00:00:00.000'),DateTime.parse('2021-05-16 00:00:00.000'),DateTime.parse('2021-05-19 00:00:00.000')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Vertical calendar'),
    ),
        body: Container(padding: EdgeInsets.only(left: 12,right: 12),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromRGBO(250, 252, 249, 1),Color.fromRGBO(254, 217, 213, 1)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
          ),
          child: VerticalCalendar(
            minDate: DateTime.now().subtract(const Duration(days: 45)),
            maxDate: DateTime.now().add(const Duration(days: 45)),
            glucoseAndLogsData: _glucoseAndLogsData,
            glucoseData: _glucoseData,
            onDayPressed: (DateTime date) {
                print('Date selected: $date');
            },
          ),
        )
    );
  }
}
