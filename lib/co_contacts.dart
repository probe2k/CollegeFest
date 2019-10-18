import 'package:flutter/material.dart';
import 'package:college_fest/model/contact_model.dart';

class CoContacts extends StatefulWidget {
	@override
	_CoContactsState createState() => _CoContactsState();
}

class _CoContactsState extends State<CoContacts> {
	@override
	Widget build(BuildContext context) {
		return new Scaffold(
			body: new ListView.builder(
				itemCount: contactData.length,
				itemBuilder: (context, i) => new Column(
					children: <Widget>[
						new Divider(
							height: 20.0
						),

						new ListTile(
							title: new Row(
								mainAxisAlignment: MainAxisAlignment.spaceBetween,
								children: <Widget>[
									new Text(
										contactData[i].name,
										textAlign: TextAlign.center,
										style: new TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
									),
								],
							),
							subtitle: new Container(
								padding: const EdgeInsets.only(top: 10.0),
								child: new Text(
									contactData[i].desc,
									textAlign: TextAlign.left,
									style: new TextStyle(color: Colors.grey, fontSize: 15.0),
								),
							),
						),
					],
				),
			),
			backgroundColor: new Color(0xff121212),
		);
	}
}