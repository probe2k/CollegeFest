class EventModel {
	final String name;
	final String desc;
	final String avatarUrl;

	EventModel({this.name, this.desc, this.avatarUrl});
}

List<EventModel> eventData = [
	new EventModel(
		name: "CSE/ISE",
		desc: "1. Technical Paper Presentation\n2. Competitive Coding\n3. Search It\n4. Webathon\n5. App Dev\n6. Cryptohunt\n7. Technical Quiz\n8. PUBG\n9. Counter Strike\n10. Tech-o-Graphy",
		avatarUrl: 'media/cse.jpg',
	),
	new EventModel(
		name: "ECE",
		desc: "1. Playtronics\n2.4 pics 1 word\n3. Technical Quiz\n4. Technical Paper Presentation\n5. IEEE Quiz",
		avatarUrl: 'media/ece1.jpg',
	),
	new EventModel(
		name: "EEE",
		desc: "1. Tek - Q\n2.Play-Trix\n3. Teknowatt\n4. Hunter's Quest\n5. Technical Paper Presentation",
		avatarUrl: 'media/eee.jpg',
	),
	new EventModel(
		name: "Civil",
		desc: "1. Technical Quiz\n2. Thermocol Modelling\n3. Auto CAD\n4. Technical Paper Presentation",
		avatarUrl: 'media/civil.png',
	),
	new EventModel(
		name: "Mechanical",
		desc: "1. Technical Quiz\n2. Fast Hands on Lathe\n3. Tech CAED\n4. Mini Project\n5. Technical Paper Presentation",
		avatarUrl: 'media/mech.jpg',
	),
	new EventModel(
		name: "MBA",
		desc: "1. Best Manager\n2. Business Quiz\n3. Spot Ads",
		avatarUrl: 'media/mba.png',
	),
];