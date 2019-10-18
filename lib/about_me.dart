import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return new Scaffold(
			body: new Stack(
				children: <Widget>[
					ClipPath(
						child: Container(
							color: new Color(0xff121212),
						),
						clipper: getClipper(),
					),
					Positioned(
						width: 350.0,
						left: 28.0,
						top: MediaQuery.of(context).size.height / 6,
						child: Column(
							children: <Widget>[
								Container(
									width: 150.0,
									height: 150.0,
									decoration: BoxDecoration(
										color: Colors.yellow,
										image: DecorationImage(
											image: AssetImage('media/user_profile.png'),
											fit: BoxFit.cover,
										),
										borderRadius: BorderRadius.all(Radius.circular(75.0))
									),
								),
								SizedBox(height: 15.0),
								Text(
									'Yash Kumar',
									style: TextStyle(
										fontSize: 30.0,
									),
								),
								SizedBox(height: 10.0),
								Text(
									'kyash054@gmail.com',
								),
								SizedBox(height: 25.0),
								Container(
									height: 40.0,
									width: 200.0,
									child: Material(
										borderRadius: BorderRadius.circular(20.0),
										shadowColor: Colors.blueAccent,
										color: Colors.blue,
										elevation: 7.0,
										child: GestureDetector(
											onTap: () {
											},
											child: Center(
												child: Text(
													'facebook.com/probe2k',
													style: TextStyle(color: Colors.white),
												),
											),
										),
									),
								),
								SizedBox(height: 15.0),
								Container(
									height: 40.0,
									width: 200.0,
									child: Material(
										borderRadius: BorderRadius.circular(20.0),
										shadowColor: Colors.grey,
										color: Colors.grey,
										elevation: 7.0,
										child: GestureDetector(
											onTap: () {},
											child: Center(
												child: Text(
													'github.com/probe2k',
													style: TextStyle(color: Colors.white),
												),
											),
										),
									),
								),
								SizedBox(height: 15.0),
								Container(
									height: 40.0,
									width: 200.0,
									child: Material(
										borderRadius: BorderRadius.circular(20.0),
										shadowColor: Colors.pink,
										color: Colors.pink,
										elevation: 7.0,
										child: GestureDetector(
											onTap: () {},
											child: Center(
												child: Text(
													'instagram.com/probe2k',
													style: TextStyle(color: Colors.white),
												),
											),
										),
									),
								),
								SizedBox(height: 15.0),
								Container(
									height: 40.0,
									width: 200.0,
									child: Material(
										borderRadius: BorderRadius.circular(20.0),
										shadowColor: Colors.teal,
										color: Colors.teal,
										elevation: 7.0,
										child: GestureDetector(
											onTap: () {},
											child: Center(
												child: Text(
													'(+91) 7360874452',
													style: TextStyle(color: Colors.white),
												),
											),
										),
									),
								),
							],
						),
					),
				],
			),
			backgroundColor: new Color(0xffa3a3a3),
		);
	}
}

class getClipper extends CustomClipper<Path> {
	@override
	Path getClip(Size size) {
		var path = new Path();

		path.lineTo(0.0, size.height / 1.9);
		path.lineTo(size.width + 125, 0.0);
		path.close();
		return path;
	}

	@override
	bool shouldReclip(CustomClipper<Path> oldClipper) {
		return true;
	}
}