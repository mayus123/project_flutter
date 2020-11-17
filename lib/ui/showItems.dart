part of 'ui.dart';

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  List dataPostOk;

  void dataPost() {
    getPost().then((value) {
      setState(() {
        dataPostOk = value;
      });
    });
  }

  // void hapusPost(String id) async {
  //   var hapus = await deletePost(id);

  //   AlertDialog alertDialog = AlertDialog(
  //     content: Container(
  //       height: 100,
  //       child: Column(
  //         children: [
  //           Text("Delete Post ${hapus}"),
  //           RaisedButton(
  //             child: Text("OK"),
  //             onPressed: () => Navigator.pop(context),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  //   showDialog(context: context, child: alertDialog);
  // }

  @override
  void initState() {
    super.initState();
    dataPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(children: [
            dataPostOk == null
                ? Center(child: CircularProgressIndicator())
                : Expanded(
                    child: ListView.builder(
                        itemCount: dataPostOk.length,
                        itemBuilder: (context, i) {
                          return Padding(
                            padding: EdgeInsets.all(15),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 1,
                              height: 120,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      spreadRadius: 5,
                                      blurRadius: 5,
                                      offset: Offset(
                                          0, 5), // changes position of shadow
                                    ),
                                  ],
                                  color: Colors.white),
                              child: Row(children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 1,
                                  width: 90,
                                  margin: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black, width: 2),
                                    color: Colors.transparent,
                                  ),
                                  child: ClipOval(
                                    child: Image.asset('assets/img/x1.jpg'),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height * 1,
                                    margin: EdgeInsets.only(
                                        top: 15, bottom: 15, right: 15),
                                  ),
                                )
                              ]),
                            ),
                          );

                          // ListTile(
                          //   focusColor: Colors.blue,
                          //   title: Text(dataPostOk[i].title),
                          //   trailing: Icon(Icons.ac_unit),
                          //   leading: Icon(Icons.ac_unit),
                          //   onTap: () {},
                          // );
                        }),
                  ),
            // Container(
            //   alignment: Alignment.bottomRight,
            //   padding: EdgeInsets.all(20),
            //   child: FloatingActionButton(
            //     onPressed: () {
            //       Navigator.push(context, MaterialPageRoute(builder: (context) {
            //         return CreatePost();
            //       }));
            //     },
            //     tooltip: 'Increment',
            //     child: Icon(Icons.add),
            //   ),
            // )
          ]),
        ));
  }
}
