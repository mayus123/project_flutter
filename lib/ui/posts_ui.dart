part of 'uis.dart';


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

  void hapusPost(String id) async{
    var hapus = await deletePost(id);

    AlertDialog alertDialog = AlertDialog(
      content: Container(
        height: 100.0,
        child: Column(
          children: [
            Text("Delete Post ${hapus}"),
            RaisedButton(
              child: Text("OK"),
              onPressed: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
    showDialog(context: context, child: alertDialog);
  }

  @override
  void initState() {
    super.initState();
    dataPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("")),
        body: Column(children: [
          dataPostOk == null
              ? Center(child: CircularProgressIndicator())
              : Expanded(
              child: ListView.builder(
                itemCount: dataPostOk.length,
                itemBuilder: (context, i) {
                  return ListTile(
                      title: Text(dataPostOk[i].title),
                      subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            RaisedButton(
                              color: Colors.green,
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context){
                                      return EditPost(id: dataPostOk[i].id.toString());
                                    }
                                ));
                              },
                              child:Icon(Icons.edit),
                            ),
                            RaisedButton(
                              color: Colors.red,
                              onPressed: () {
                                hapusPost(dataPostOk[i].id.toString());
                              },
                              child:Icon(Icons.delete),
                            )
                          ])
                  );
                },
              )),
          Container(
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.all(20),
            child: FloatingActionButton(
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return CreatePost();
                }));
              },
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
          )
        ]));
  }
}
