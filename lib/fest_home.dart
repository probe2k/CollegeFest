import 'package:flutter/material.dart';
import 'package:college_fest/intro_screen.dart';
import 'package:college_fest/events_handler.dart';
import 'package:college_fest/about_me.dart';
import 'package:college_fest/login_page.dart';
import 'package:college_fest/scheduler.dart';
import 'package:college_fest/co_contacts.dart';

class FestHome extends StatefulWidget {
	@override
	_FestHomeState createState() => new _FestHomeState();
}

class _FestHomeState extends State<FestHome> with SingleTickerProviderStateMixin {
	TabController _tabController;
	@override
	void initState() {
		super.initState();
		_tabController = new TabController(length: 3, initialIndex: 0, vsync: this);
	}

	@override
	Widget build(BuildContext context) {
		return new Scaffold(
			appBar: new AppBar(
				centerTitle: true,
				title: new Text("SVIT - TechFest"),
				elevation: 0.7,
				bottom: new TabBar(
					controller: _tabController,
					indicatorColor: Colors.white,
					tabs: <Widget>[
						new Tab(
							text: "INTRO",
						),
						new Tab(
							text: "EVENTS",
						),
						new Tab(
							text: "CONTACT",
						),
					],
				),
				shape: RoundedRectangleBorder(
					borderRadius: BorderRadius.vertical(
						bottom: Radius.circular(30),
					),
				),
			),
			drawer: new Drawer(
				child: ListView(
					children: <Widget>[
						new UserAccountsDrawerHeader(
							accountName: new Text(
								'Sai Vidya Institute of Technology',
								style: TextStyle(
									fontWeight: FontWeight.bold,
									color: Colors.black,
									fontSize: 18.0,
								),
							),
							decoration: new BoxDecoration(
								image: new DecorationImage(image: new AssetImage('media/saividya.jpg'), fit: BoxFit.cover),
							),
						),

						new ListTile(
							title: new Text('Calendar'),
							onTap: () {
								Navigator.push(context, new MaterialPageRoute(
									builder: (BuildContext context) => new Scheduler(),),
								);
							},
						),

						new ListTile(
							title: new Text('Coordinator Contacts'),
							onTap: () {
								Navigator.push(context, new MaterialPageRoute(
									builder: (BuildContext context) => new CoContacts(),
								),);
							}
						),
					],
				),
			),

			backgroundColor: new Color(0xff121212),
			body: new TabBarView(
				controller: _tabController,
				children: <Widget>[
					new IntroScreen(),
					new Events(),
					new Contact(),
				],
			),
			floatingActionButton: new FloatingActionButton.extended(
				backgroundColor: Colors.cyan,
				icon: Icon(Icons.add),
				label: Text('REGISTER'),
				onPressed: () {
					Navigator.push(context, new MaterialPageRoute(
						builder: (BuildContext context) => new Login(),
					),);
				},
			),
		);
	}
}