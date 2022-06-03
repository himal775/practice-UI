import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static List<String> items = ["Hey", "Hi", "my", "bie"];
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            leading: Icon(
              Icons.arrow_back,
              color: Colors.grey,
            ),
            actions: [
              Icon(Icons.notifications_active, color: Colors.grey),
            ],
            backgroundColor: Colors.white,
          ),
          body: Container(
            child: Column(children: [
              Container(
                  height: 100,
                  width: 100,
                  child: ClipOval(
                      child: Image.network(
                          "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.medicalnewstoday.com%2Farticles%2F322868&psig=AOvVaw3yCHcsDCsQ0jM3Vpwx2iNg&ust=1654267550631000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCJD_yICBj_gCFQAAAAAdAAAAABAD"))),
              SizedBox(height: 20),
              buildlisttile(),
              SizedBox(
                height: 10,
              ),
              Text(
                "chromicle",
                style: TextStyle(fontSize: 21),
              ),
              Text(
                "@amFOSS",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Mobile App Developer and Open Source enthusiastic",
                  style: TextStyle(color: Colors.grey, fontSize: 24),
                ),
              ),
              buildIcon(),
            ]),
          ),
          //Photo in circular border
        ));
  }
}

Widget buildIcon() {
  final List<String> item = [
    "Privacy",
    "Purchase History",
    "Help & Support",
    "Setting",
    "Invite a friend",
    "logout"
  ];

  return Container(
    child: Expanded(
      child: ListView.builder(
          itemCount: item.length,
          itemBuilder: (BuildContext context, index) {
            return Scrollbar(
              child: ListTile(
                leading: Icon(Icons.list),
                title: Text(item[index]),
                trailing: Icon(Icons.arrow_back_ios),
                textColor: Colors.black,
              ),
            );
          }),
    ),
  );
}

Widget buildlisttile() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 50,
          child: ClipOval(child: Image.asset("assets/images/Canyoning.jpg")),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          height: 50,
          width: 50,
          child: ClipOval(
              child: Image.network(
                  "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.dkfindout.com%2Fus%2Fanimals-and-nature%2Fdogs%2Fwhat-is-dog%2F&psig=AOvVaw3yCHcsDCsQ0jM3Vpwx2iNg&ust=1654267550631000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCJD_yICBj_gCFQAAAAAdAAAAABAI")),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          height: 50,
          width: 50,
          child: ClipOval(
              child: Image.network(
                  "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.dkfindout.com%2Fus%2Fanimals-and-nature%2Fdogs%2Fwhat-is-dog%2F&psig=AOvVaw3yCHcsDCsQ0jM3Vpwx2iNg&ust=1654267550631000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCJD_yICBj_gCFQAAAAAdAAAAABAI")),
        )
      ],
    ),
  );
}
