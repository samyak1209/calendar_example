import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
      home: MyHomePage(title: 'Clear Graph Demo'),
      debugShowCheckedModeBanner: false,
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

  List sam=[
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 00:09:00",
      "historic_glucose_mmol_l": "4.2"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 00:24:00",
      "historic_glucose_mmol_l": "4.3"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 00:54:00",
      "historic_glucose_mmol_l": "2.3"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 01:09:00",
      "historic_glucose_mmol_l": "2.9"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 01:24:00",
      "historic_glucose_mmol_l": "2.9"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 01:39:00",
      "historic_glucose_mmol_l": "2.9"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 01:54:00",
      "historic_glucose_mmol_l": "2.9"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 02:09:00",
      "historic_glucose_mmol_l": "3.2"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 02:24:00",
      "historic_glucose_mmol_l": "3.3"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 02:39:00",
      "historic_glucose_mmol_l": "3.4"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 02:54:00",
      "historic_glucose_mmol_l": "3.5"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 03:10:00",
      "historic_glucose_mmol_l": "3.8"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 03:25:00",
      "historic_glucose_mmol_l": "3.8"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 03:40:00",
      "historic_glucose_mmol_l": "3.2"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 03:55:00",
      "historic_glucose_mmol_l": "2.9"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 04:10:00",
      "historic_glucose_mmol_l": "2.9"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 04:25:00",
      "historic_glucose_mmol_l": "2.9"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 04:40:00",
      "historic_glucose_mmol_l": "3"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 04:55:00",
      "historic_glucose_mmol_l": "3.7"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 05:10:00",
      "historic_glucose_mmol_l": "3.1"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 05:25:00",
      "historic_glucose_mmol_l": "3"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 05:40:00",
      "historic_glucose_mmol_l": "3.7"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 05:55:00",
      "historic_glucose_mmol_l": "4.3"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 06:10:00",
      "historic_glucose_mmol_l": "3.2"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 06:25:00",
      "historic_glucose_mmol_l": "2.9"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 06:40:00",
      "historic_glucose_mmol_l": "3.7"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 06:55:00",
      "historic_glucose_mmol_l": "4.8"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 07:10:00",
      "historic_glucose_mmol_l": "4.6"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 07:25:00",
      "historic_glucose_mmol_l": "4.8"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 07:40:00",
      "historic_glucose_mmol_l": "5.1"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 07:55:00",
      "historic_glucose_mmol_l": "5.1"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 08:11:00",
      "historic_glucose_mmol_l": "5.1"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 08:26:00",
      "historic_glucose_mmol_l": "4.8"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 08:41:00",
      "historic_glucose_mmol_l": "5"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 08:56:00",
      "historic_glucose_mmol_l": "5.2"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 09:11:00",
      "historic_glucose_mmol_l": "4.7"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 09:26:00",
      "historic_glucose_mmol_l": "4.6"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 09:41:00",
      "historic_glucose_mmol_l": "4.8"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 09:56:00",
      "historic_glucose_mmol_l": "4.6"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 10:11:00",
      "historic_glucose_mmol_l": "4.4"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 10:26:00",
      "historic_glucose_mmol_l": "4.8"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 10:41:00",
      "historic_glucose_mmol_l": "5.2"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 10:57:00",
      "historic_glucose_mmol_l": "5.4"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 11:12:00",
      "historic_glucose_mmol_l": "6.4"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 11:27:00",
      "historic_glucose_mmol_l": "7"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 11:42:00",
      "historic_glucose_mmol_l": "6.5"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 11:57:00",
      "historic_glucose_mmol_l": "5.9"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 12:12:00",
      "historic_glucose_mmol_l": "5.7"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 12:27:00",
      "historic_glucose_mmol_l": "5.7"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 12:42:00",
      "historic_glucose_mmol_l": "5.5"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 12:57:00",
      "historic_glucose_mmol_l": "5.4"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 13:12:00",
      "historic_glucose_mmol_l": "5"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 13:28:00",
      "historic_glucose_mmol_l": "4.7"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 13:43:00",
      "historic_glucose_mmol_l": "5.6"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 13:58:00",
      "historic_glucose_mmol_l": "6.4"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 14:13:00",
      "historic_glucose_mmol_l": "6.8"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 14:28:00",
      "historic_glucose_mmol_l": "6.3"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 14:43:00",
      "historic_glucose_mmol_l": "5.7"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 14:58:00",
      "historic_glucose_mmol_l": "5.1"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 15:13:00",
      "historic_glucose_mmol_l": "4.7"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 15:28:00",
      "historic_glucose_mmol_l": "4.6"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 15:43:00",
      "historic_glucose_mmol_l": "4.6"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 15:58:00",
      "historic_glucose_mmol_l": "4.4"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 16:14:00",
      "historic_glucose_mmol_l": "6.1"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 16:29:00",
      "historic_glucose_mmol_l": "7.4"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 16:44:00",
      "historic_glucose_mmol_l": "7"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 16:58:00",
      "historic_glucose_mmol_l": "5.6"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 17:13:00",
      "historic_glucose_mmol_l": "5.4"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 17:28:00",
      "historic_glucose_mmol_l": "5.4"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 17:44:00",
      "historic_glucose_mmol_l": "5.2"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 17:59:00",
      "historic_glucose_mmol_l": "5.1"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 18:14:00",
      "historic_glucose_mmol_l": "6.2"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 18:29:00",
      "historic_glucose_mmol_l": "7.7"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 18:44:00",
      "historic_glucose_mmol_l": "7.3"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 18:59:00",
      "historic_glucose_mmol_l": "6"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 19:14:00",
      "historic_glucose_mmol_l": "5.6"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 19:29:00",
      "historic_glucose_mmol_l": "6.1"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 19:44:00",
      "historic_glucose_mmol_l": "6.7"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 19:59:00",
      "historic_glucose_mmol_l": "5.9"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 20:14:00",
      "historic_glucose_mmol_l": "5.3"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 20:29:00",
      "historic_glucose_mmol_l": "4.9"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 20:44:00",
      "historic_glucose_mmol_l": "4.3"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 20:59:00",
      "historic_glucose_mmol_l": "4.1"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 21:15:00",
      "historic_glucose_mmol_l": "4.2"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 21:30:00",
      "historic_glucose_mmol_l": "4.3"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 21:45:00",
      "historic_glucose_mmol_l": "4.3"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 22:00:00",
      "historic_glucose_mmol_l": "4.5"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 22:15:00",
      "historic_glucose_mmol_l": "4.4"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 22:31:00",
      "historic_glucose_mmol_l": "4.4"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 22:46:00",
      "historic_glucose_mmol_l": "4.4"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 23:01:00",
      "historic_glucose_mmol_l": "3.9"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 23:16:00",
      "historic_glucose_mmol_l": "4.2"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 23:31:00",
      "historic_glucose_mmol_l": "5.2"
    },
    {
      "serial_number": "88BB0094-4283-4F9C-8C39-174B4452704E",
      "device_timestamp": "2021-05-18 23:46:00",
      "historic_glucose_mmol_l": "5.3"
    }
  ];

  ScrollController _scrollController = ScrollController();
  List<FlSpot> flSpot= new List<FlSpot>();


  @override
  void initState() {
    super.initState();
    for(int i=0;i<sam.length;i++){
      double x= double.parse(parseDate(sam[i]['device_timestamp']));
      double y=double.parse(sam[i]['historic_glucose_mmol_l']);
      flSpot.add(FlSpot(x,y));
    }
  }

  String parseDate(String timeStamp){
    DateTime val=DateTime.parse(timeStamp);
    String formattedTime = DateFormat.Hm().format(val);
    double value=double.parse(formattedTime.replaceAll(':','.'));
    double frac=double.parse((value-value.toInt()).toStringAsFixed(2));
    return (value.toInt()+frac+(0.62*frac)).toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: graphWidget(context),
      )
    );
  }

  Widget graphWidget(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width-60,
      child: Stack(
        children: [
          Align(alignment: Alignment.centerLeft,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              const Text(
                "",
                style: TextStyle(
                    color: Color(0xff1A1B1F),
                    fontSize: 11,
                    fontWeight: FontWeight.w600
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  width: /*500*/1000,
                  child: LineChart(
                    LineChartData(
                      gridData: FlGridData(
                        show: false,
                      ),
                      maxY: 9,
                      minY: 0,maxX: 0,minX: 0,
                      lineBarsData: [LineChartBarData(spots: [FlSpot(0, 0)],dotData: FlDotData(show: false))],
                      lineTouchData: LineTouchData(enabled: false),
                      titlesData: FlTitlesData(
                        leftTitles: SideTitles(
                          showTitles: true,
                          getTextStyles: (value) => TextStyle(
                            color: Color(0xff1A1B1F),
                            fontWeight: FontWeight.normal,
                            fontSize: 10,
                          ),
                          getTitles: (value) {
                            switch (value.toInt()) {
                              case 2:
                                return '2.5';
                              case 4:
                                return '3.9';
                              case 7:
                                return '7';
                              case 8:
                                return '8';

                            }
                            return '';
                          },
                          margin: 15,
                          reservedSize: 24,
                        ),
                        bottomTitles: SideTitles(
                          showTitles: true,
                          getTextStyles: (value) => TextStyle(
                            color: Color(0xff1A1B1F),
                            fontWeight: FontWeight.normal,
                            fontSize: 10,
                          ),
                          getTitles: (value) {
                            switch (value.toInt()) {
                              case 0:
                                return '';
                            }
                            return '';
                          },
                          margin: 15,
                          reservedSize: 24,
                        ),
                      ),
                      borderData: FlBorderData(
                          show: true,
                          border: Border(
                            bottom: BorderSide(
                                color:  Colors.white,
                            ),
                            left: BorderSide(
                              color: Colors.white,
                            ),
                            right: BorderSide(
                              color: Colors.white,
                            ),
                            top: BorderSide(
                              color: Colors.white,
                            ),
                          )),
                    ),
                    swapAnimationDuration: const Duration(milliseconds: 250),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),),
          SingleChildScrollView(
            controller: _scrollController,
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "",
                  style: TextStyle(
                      color: Color(0xff1A1B1F),
                      fontSize: 11,
                      fontWeight: FontWeight.w600
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Container(
                    width: /*500*/1000,
                    child: LineChart(
                      chartData(),
                      swapAnimationDuration: const Duration(milliseconds: 250),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }

  LineChartData chartData() {
    return LineChartData(
      gridData: FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 24,
          getTextStyles: (value) => TextStyle(
            color: Color(0xff1A1B1F),
            fontWeight: FontWeight.normal,
            fontSize: 10,
          ),
          margin: 10,
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return '00:00';
              case 2:
                return '02:00';
              case 4:
                return '04:00';
              case 6:
                return '06:00';
              case 8:
                return '08:00';
              case 10:
                return '10:00';
              case 12:
                return '12:00';
              case 14:
                return '14:00';
              case 16:
                return '16:00';
              case 18:
                return '18:00';
              case 20:
                return '20:00';
              case 22:
                return '22:00';
              case 24:
                return '23:59';
            }
            return '';
          },
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => TextStyle(
            color: Color(0xff1A1B1F),
            fontWeight: FontWeight.normal,
            fontSize: 10,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return '';
              case 4:
                return '';
              case 7:
                return '';
              case 8:
                return '';
            }
            return '';
          },
          margin: 15,
          reservedSize: 24,
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border(
            bottom: BorderSide(
                color: Color(0x441A1B1F),
                width: 2.5
            ),
            left: BorderSide(
              color: Colors.white,
            ),
            right: BorderSide(
              color: Colors.white,
            ),
            top: BorderSide(
              color: Colors.white,
            ),
          )),
      minX: 0,
      maxX: 25,
      maxY: 9,
      minY: 0,
      lineBarsData: [
        LineChartBarData(
          spots: flSpot,
          dotData: FlDotData(show: false),isCurved: true,colors: [Colors.blue,Colors.red],curveSmoothness: 0.3
        ),
      ],
      lineTouchData: LineTouchData(
        getTouchedSpotIndicator: (LineChartBarData barData, List<int> indicators){
          return indicators.map((int index) {
            return TouchedSpotIndicatorData(FlLine(color: Colors.green,strokeWidth: 2), FlDotData(show: false));
          }).toList();
        },
        enabled: true,
        fullHeightTouchLine: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipRoundedRadius:100,
            showOnTopOfTheChartBoxArea: true,
            tooltipBgColor: Colors.green,
            tooltipBottomMargin:0,
            getTooltipItems: (List<LineBarSpot> touchedSpots){
              return touchedSpots.map((LineBarSpot touchedSpot) {
                if (touchedSpot == null) {
                  return null;
                }
                return LineTooltipItem(touchedSpot.y.toString()+" m/Mol "+touchedSpot.x.toString(), TextStyle());
              }).toList();
            }),

        /*touchCallback: (LineTouchResponse response){
        }*/
      ),
    );
  }

}

