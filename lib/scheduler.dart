import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Scheduler extends StatefulWidget {
	@override
	_SchedulerState createState() => new _SchedulerState();
}

class _SchedulerState extends State<Scheduler> {
	CalendarController _controller;

	@override
	void initState() {
		super.initState();
		_controller = CalendarController();
	}

	@override
	Widget build(BuildContext context) {
		return new Scaffold(
			appBar: new AppBar(
				title: new Text('Calendar'),
			),
			body: new SingleChildScrollView(
				child: Column(
					crossAxisAlignment: CrossAxisAlignment.start,
					children: <Widget>[
						TableCalendar(calendarController: _controller,)
					],
				),
			),
			backgroundColor: new Color(0xffd4d4d4),
		);
	}
}