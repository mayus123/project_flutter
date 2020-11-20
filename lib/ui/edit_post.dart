part of 'uis.dart';

class EditPost extends StatefulWidget {
  final String id;

  EditPost({this.id});
  @override
  _EditPostState createState() => _EditPostState();
}

class _EditPostState extends State<EditPost> {

  TextEditingController editname = TextEditingController();
  TextEditingController editemail = TextEditingController();
  TextEditingController editpass = TextEditingController();

  Map dataDetail;

  String msg;

  void getDetail() {
    singlePost(widget.id).then((value) {
      setState(() {
        dataDetail = value;
        editname = TextEditingController(text: dataDetail['name']);
        editemail = TextEditingController(text: dataDetail['email']);
        editpass = TextEditingController(text: dataDetail['password']);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getDetail();
  }

  void updateData() async {
    var value = await updatedPost(dataDetail["id"].toString(),
        editname.toString(), editemail.toString(), editpass.toString());
    setState(() {
      print(value);
      if (value == "ok") {
        msg = "Success";
      } else {
        msg = "Failed";
      }
    });

    AlertDialog alertDialog = AlertDialog(
        content: Container(
            height: 100.0,
            child: Column(
              children: [
                Text("Update New Post ${msg}"),
                RaisedButton(
                  child: Text("OK"),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            )
        )
    );
    showDialog(context: context, child: alertDialog);
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Edit")),
        body: Column(
            children: [
              SizedBox(height: 20,),
              TextFormField(
                  controller: editname,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blueGrey[100],
                      hintText: "Name",
                      labelText: "Name",
                      border: UnderlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5.0),
                            topLeft: Radius.circular(5.0),
                          )
                      )
                  )
              ),
              SizedBox(height: 20,),
              TextFormField(
                  controller: editemail,
                  maxLines: 5,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blueGrey[100],
                      hintText: "Email",
                      labelText: "Email",
                      border: UnderlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5.0),
                            topLeft: Radius.circular(5.0),
                          )
                      )
                  )
              ),

              SizedBox(height: 20,),
              TextFormField(
                controller: editpass,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blueGrey[100],
                    hintText: "Password",
                    labelText: "Password",
                    border: UnderlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5.0),
                          topLeft: Radius.circular(5.0),
                        )
                    )
                ),
//                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20,),
              RaisedButton(
                child: Text('Edit Data', style: TextStyle(color: Colors.white)),
                color: Colors.blue,
                onPressed: () {
                  updateData();
                },
              )
            ]
        )
    );
  }
}