import 'package:flutter/material.dart';
import 'package:college_fest/model/event_model.dart';

class Events extends StatefulWidget {
	@override
	_EventsState createState() => new _EventsState();
}

class _EventsState extends State<Events> {
	@override
	Widget build(BuildContext context) {
		return new ListView.builder(
			itemCount: eventData.length,
			itemBuilder: (context, i) => new Column(
				children: <Widget>[
					new Divider(
						height: 20.0
					),

					new ListTile(
						leading: new CircleAvatar(
							foregroundColor: Theme.of(context).primaryColor,
							backgroundColor: Colors.grey,
							backgroundImage: new AssetImage(eventData[i].avatarUrl),
						),

						title: new Row(
							mainAxisAlignment: MainAxisAlignment.spaceBetween,
							children: <Widget>[
								new Text(
									eventData[i].name,
									textAlign: TextAlign.center,
									style: new TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
								),
							],
						),
						subtitle: new Container(
							padding: const EdgeInsets.only(top: 10.0),
							child: new Text(
								eventData[i].desc,
								textAlign: TextAlign.left,
								style: new TextStyle(color: Colors.grey, fontSize: 15.0),
							),
						),
					)
				],
			),
		);
	}
}