//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:calendar_example/utils/data_models.dart';
import 'package:calendar_example/utils/data_utils.dart';
import 'package:intl/intl.dart';

class VerticalCalendar extends StatefulWidget {
  final DateTime minDate;
  final DateTime maxDate;
  final ValueChanged<DateTime> onDayPressed;
  final List<DateTime> glucoseAndLogsData;
  final List<DateTime> glucoseData;

  VerticalCalendar({@required this.minDate,
    @required this.maxDate,
    @required this.glucoseAndLogsData,
    @required this.glucoseData,
    this.onDayPressed,})
      : assert(minDate != null),
        assert(maxDate != null),
        assert(minDate.isBefore(maxDate));

  @override
  _VerticalCalendarState createState() => _VerticalCalendarState();
}

class _VerticalCalendarState extends State<VerticalCalendar> {
  DateTime _minDate;
  DateTime _maxDate;
  List<Month> _months;
  List<DateTime> glucoseAndLogsData;
  List<DateTime> glucoseData;

  @override
  void initState() {
    super.initState();
    _months = DateUtils.extractWeeks(widget.minDate, widget.maxDate);
    _minDate = widget.minDate.removeTime();
    _maxDate = widget.maxDate.removeTime();
    glucoseAndLogsData=widget.glucoseAndLogsData;
    glucoseData=widget.glucoseData;
  }

  @override
  void didUpdateWidget(VerticalCalendar oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.minDate != widget.minDate ||
        oldWidget.maxDate != widget.maxDate) {
      _months = DateUtils.extractWeeks(widget.minDate, widget.maxDate);
      _minDate = widget.minDate.removeTime();
      _maxDate = widget.maxDate.removeTime();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
              cacheExtent:
              (MediaQuery
                  .of(context)
                  .size
                  .width / DateTime.daysPerWeek) *
                  6,
              padding: EdgeInsets.zero,
              itemCount: _months.length,
              itemBuilder: (BuildContext context, int position) {
                return _MonthView(
                    month: _months[position],
                    minDate: _minDate,
                    maxDate: _maxDate,
                    onDayPressed: widget.onDayPressed,
                    glucoseAndLogsData: glucoseAndLogsData,
                    glucoseData: glucoseData,
                );
              }),
        ),
      ],
    );
  }
}





class _MonthView extends StatelessWidget {
  final Month month;
  final DateTime minDate;
  final DateTime maxDate;
  final ValueChanged<DateTime> onDayPressed;
  final List<DateTime> glucoseAndLogsData;
  final List<DateTime> glucoseData;

  _MonthView({@required this.month,
    @required this.minDate,
    @required this.maxDate,
    this.onDayPressed,
    this.glucoseAndLogsData,
    this.glucoseData,
    Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _DefaultMonthView(month: month.month, year: month.year),
        Table(
          children: month.weeks
              .map((Week week) => _generateFor(context, week))
              .toList(growable: false),
        ),
      ],
    );
  }

  TableRow _generateFor(BuildContext context, Week week) {
    DateTime firstDay = week.firstDay;

    return TableRow(
        children: List<Widget>.generate(DateTime.daysPerWeek, (int position) {
          DateTime day = DateTime(week.firstDay.year, week.firstDay.month,
              firstDay.day + (position - (firstDay.weekday - 1)));

          if ((position + 1) < week.firstDay.weekday ||
              (position + 1) > week.lastDay.weekday ||
              day.isBefore(minDate) ||
              day.isAfter(maxDate)) {
            return const SizedBox();
          } else {
            return Padding(
              padding: const EdgeInsets.only(top:3.0),
              child: AspectRatio(
                  aspectRatio: 1.4,
                  child: GestureDetector(
                    onTap:  onDayPressed != null
                        ? () {
                      if (onDayPressed != null) {
                        onDayPressed(day);
                      }
                    }
                        : null,
                    behavior: HitTestBehavior.translucent,
                    child: _DefaultDayView(date: day,glucoseAndLogsData: glucoseAndLogsData,glucoseData:glucoseData)
                  )),
            );
          }
        }, growable: false));
  }
}




class _DefaultMonthView extends StatelessWidget {
  final int month;
  final int year;

  _DefaultMonthView({@required this.month, @required this.year});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(height: 15,),
          Text(
            DateFormat('MMMM yyyy').format(DateTime(year, month)),
            style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Text('Mo',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            ),
            Text('Tu',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            Text('We',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            Text('Th',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            Text('Fr',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            Text('Sa',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.only(right: 9),
              child: Text('Su',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            ),
          ],)
        ],
      ),
    );
  }
}




class _DefaultDayView extends StatelessWidget {
  final DateTime date;
  final List<DateTime> glucoseAndLogsData;
  final List<DateTime> glucoseData;

  _DefaultDayView({@required this.date,this.glucoseAndLogsData,this.glucoseData});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      for (var i = 0; i < glucoseAndLogsData.length; i++) date==glucoseAndLogsData[i]?Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(216, 238, 215, 1),
            shape: BoxShape.circle,border: Border.all(width: 3,color:Color.fromRGBO(99, 155, 137, 1) )),
      ):Container(),
      for (var i = 0; i < glucoseData.length; i++) date==glucoseData[i]?Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(254, 217, 213, 1) ,
            shape: BoxShape.circle,border: Border.all(width: 3,color:Color.fromRGBO(248, 115, 105, 1) )),
      ):Container(),
      DateFormat('yMMMd').format(date)==DateFormat('yMMMd').format(DateTime.now())?
      (Container(
        decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle),
      )):Container(),
        Center(
          child: Text(
            DateFormat('d').format(date),style: TextStyle(color:DateFormat('yMMMd').format(date)==DateFormat('yMMMd').format(DateTime.now())?Colors.white: Color.fromRGBO(31, 41, 42, 1),fontSize: 14,fontWeight: _boldText(date)?FontWeight.bold:FontWeight.normal),
          ),)
    ],
    );
  }

  bool _boldText(DateTime date){
    bool _bold=false;
    for(var i=0;i<glucoseAndLogsData.length;i++){
      if(date==glucoseAndLogsData[i]){
        _bold= true;
      }
    }
    for(var i=0;i<glucoseData.length;i++){
      if(date==glucoseData[i]){
        _bold= true;
      }
    }
    if(DateFormat('yMMMd').format(date)==DateFormat('yMMMd').format(DateTime.now())){
      _bold=true;
    }
    return _bold;
  }

}




typedef MonthBuilder = Widget Function(
    BuildContext context, int month, int year);
typedef DayBuilder = Widget Function(BuildContext context, DateTime date,
    {bool isSelected,bool isSelected2});
typedef PeriodChanged = void Function(DateTime minDate, DateTime maxDate);
