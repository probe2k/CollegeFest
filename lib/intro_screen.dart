import 'package:flutter/material.dart';
import 'package:college_fest/model/intro_model.dart';

class IntroScreen extends StatefulWidget {
	@override
	_IntroScreenState createState() => new _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
	@override
	Widget build(BuildContext context) {
		return new ListView.builder(
			itemCount: dummyData.length,
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
									dummyData[i].name,
									textAlign: TextAlign.center,
									style: new TextStyle(fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold),
								),
							],
						),
						subtitle: new Container(
							padding: const EdgeInsets.only(top: 10.0),
							child: new Text(
								dummyData[i].desc,
								textAlign: TextAlign.center,
								style: new TextStyle(color: Colors.grey, fontSize: 18.0),
							),
						),
					),
				],
			),
		);
	}
}