import 'package:flutter/material.dart';
import 'package:my_app/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var url = "http://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState(){
    super.initState();
    getData();
  }

  getData() async{
    var res = await http.get(url);
    print(data);
data = jsonDecode(res.body);
setState(() {

});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('PlayersApp'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: data != null
            ? ListView.builder
              (itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListTile(
                    title: Text(data[index]["title"]),
                    subtitle: Text("ID: ${data[index]["id"]}"),
                    leading: Image.network(data[index]["url"]),
                  ),
                );
            },
              itemCount: data.length,
            ):
              Center(
                child: CircularProgressIndicator(),
              ),
        ),
      drawer: MyDrawer(),
    );
  }
}

