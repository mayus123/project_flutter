part of 'uis.dart';

class CreatePost extends StatefulWidget {
  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  String msg;

  void simpanData(){
    createPost(name.toString(), email.toString(), pass.toString()).then((value){
      setState(() {
        if (value == true) {
          msg = "success";
        } else {
          msg = "Failed";
        }
      });

      AlertDialog alertDialog = AlertDialog(
          content: Container(
              height: 100.0,
              child: Column(
                children: [
                  Text("Create Data ${msg}"),
                  RaisedButton(
                    child: Text("OK"),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              )
          )
      );
      showDialog(context: context, child: alertDialog);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Create")),
        body: Column(
            children: [
              SizedBox(height: 20,),
              TextFormField(
                  controller: name,
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
                  controller: email,
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
                controller: pass,
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
              ),
              SizedBox(height: 20,),
              RaisedButton(
                child: Text('Created Data', style: TextStyle(color: Colors.white)),
                color: Colors.blue,
                onPressed: () {
                  simpanData();
                },
              )
            ]
        )
    );
  }
}