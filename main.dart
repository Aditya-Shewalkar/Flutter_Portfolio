import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*import 'package:flutter_demo/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Exploring Material Widgets",
    home: Scaffold(
        appBar: AppBar(title:const Text("list view in flutter"),),
        body: getList(),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          tooltip: "Add item",
          onPressed: () {
            debugPrint("tap plus");
          },
    ),
      ),
    )
  );
}

List<String> getListItems(){
  var items=List<String>.generate(100, (index) => "Item $index");
  return items;
}

Widget getList(){
  var listItems=getListItems();
  var listview=ListView.builder(
      itemCount:listItems.length ,
      itemBuilder: (context,index){
        return ListTile(
          title: Text(listItems[index]),
          leading: const Icon(Icons.arrow_forward_ios),
          onTap: (){
            //debugPrint('${listItems[index]} was tapped');
            showSnackBar(context, listItems[index]);
          },
        );
      }
  );
  return listview;
}

void showSnackBar(BuildContext context,item){
  var snackBar=SnackBar(content: Text("you just tapped $item"),
  action: SnackBarAction(label: "undo",onPressed:(){
    debugPrint("Undo operation");
  }),);
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}*/
/*
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Stateful Widgets",
    home: FavouriteCity(),
  ));
}

class FavouriteCity extends StatefulWidget {
  const FavouriteCity({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return _FavouriteCityState();
  }
}

class _FavouriteCityState extends State {
  var nameCity = "";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(title: const Text("Stateful Widget")),
      body: Container(
        margin: const EdgeInsets.all(20.0),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userInput) {
                setState(() {
                  nameCity = userInput;
                });
              },
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Text("Your favourite city is $nameCity",),
            )
          ],
        ),
      ),
    );
  }
}*/
void main() {
  runApp(MaterialApp(
    color: Colors.teal,
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.cyan.shade800,
      appBar: AppBar(
        title: const Center(child: Text("Aditya's Portfolio",style: TextStyle(color: Colors.black),)),
        backgroundColor: Colors.cyan,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("images/profile.JPG"),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text("Aditya Shewalkar",
                    style: TextStyle(
                      fontFamily: 'Caveat',
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 15,width: 250,child: Divider(thickness: 3,color: Colors.black,),),
              const Center(child: Text("Flutter Developer",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
              const Center(child: Text("Competitive Programmer",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Icon(Icons.phone,color: Colors.cyan.shade800,size: 25,),
                      title: const Text("8459606425",style: TextStyle(fontSize: 25),),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Icon(Icons.mail,color: Colors.cyan.shade800,size: 25,),
                      title: const Center(child: Text("adityashewalkar16@gmail.com",style: TextStyle(fontSize: 25),)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ));
}
