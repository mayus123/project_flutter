part of 'viewModels.dart';

Future getPost() async {
  try {
    http.Response hasil = await http.get(
        Uri.encodeFull(""),
        headers: {"Accept": "application/json"}
    );

    if (hasil.statusCode == 200) {
      print("Sukses menampilkan data");
      final data = postModelFromJson(hasil.body);
      return data;
    } else {
      print("Post Model Gagal");
      return null;
    }
  } catch (e) {
    print("Error pada catch $e");
  }
}

Future createPost(String name, String email, String password) async {
  try {
    var url = "";
    var hasil = await http.post(url, body: ({"name": name, "email": email, "password": password}));
    if (hasil.statusCode == 201) {
      print("Sukses menyimpan data");
      return true;
    } else {
      print("Gagal menyimpan data");
      return false;
    }
  } catch (e) {
    print("Error pada catch $e");
  }
}

Future singlePost(String id) async {
  try{
    http.Response hasil = await http.get(
        Uri.encodeFull(""),
        headers: {"Accept": "application/json"}
    );

    if(hasil.statusCode == 200) {
      print("Sukses menampilkan data");
      final data = json.decode(hasil.body);
      return data;
    } else {
      print("Gagal");
      return null;
    }
  } catch (e) {
    print("Error pada catch $e");
  }
}

Future updatedPost(String id, String name, String email, String password) async {
  try{
    var url = "";
    var hasil = await http.put(url, body: ({"id": id, "name": name, "email": email, "password": password}));

    if(hasil.statusCode == 200) {
      print("Sukses Update Data");
      return "ok";
    } else {
      print("Gagal Update Data");
      return "fail";
    }
  } catch (e) {
    print("Error pada catch $e");
  }
}

Future deletePost(String id) async {
  try {
    var url = "";
    var hasil = await http.delete(url);
    if(hasil.statusCode == 200) {
      print("Sukses Delete Data");
      return "ok";
    } else {
      print("Gagal Delete Data");
      return "fail";
    }
  } catch (e) {
    print("Error pada catch $e");
  }
}