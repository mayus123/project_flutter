part of 'ui.dart';

class Gudang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[50],
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0)),
                color: Colors.teal[100],
              ),
              height: 360,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0)),
                color: Colors.teal[200],
              ),
              height: 340,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0)),
                color: Colors.teal[300],
              ),
              height: 320,
            ),
            Column(
              children: [
                SizedBox(
                  height: 210,
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              Post()));
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 10, bottom: 20),
                                  width: 140,
                                  height: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Column(children: [
                                    ClipOval(
                                      child: Image.asset('assets/img/x1.jpg'),
                                    ),
                                    Text(
                                      "Import Product",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ]),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  margin: EdgeInsets.only(top: 10, bottom: 20),
                                  width: 140,
                                  height: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Column(children: [
                                    ClipOval(
                                      child: Image.asset('assets/img/x1.jpg'),
                                    ),
                                    Text(
                                      "Export Product",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ]),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  margin: EdgeInsets.only(top: 10, bottom: 20),
                                  width: 140,
                                  height: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Column(children: [
                                    ClipOval(
                                      child: Image.asset('assets/img/x1.jpg'),
                                    ),
                                    Text(
                                      "Check Product",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ]),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  margin: EdgeInsets.only(top: 10, bottom: 20),
                                  width: 140,
                                  height: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Column(children: [
                                    ClipOval(
                                      child: Image.asset('assets/img/x1.jpg'),
                                    ),
                                    Text(
                                      "Ready Product",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ]),
                                ),
                              ),
                            ],
                          ),
                        ]),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
