part of 'viewModel.dart';

Future getPost() async {
  try {
    http.Response hasil = await http.get(
        Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
        headers: {"Accept": "application/json"});

    if (hasil.statusCode == 200) {
      print("Success menampilkam data");
      final data = postModelFromJson(hasil.body);
      return data;
    } else {
      print("Gagal");
      return null;
    }
  } catch (e) {
    print("error pada catch get post $e");
  }
}
