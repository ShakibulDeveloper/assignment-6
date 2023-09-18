import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      title: 'Photo App',
    );
  }

}

class HomeScreen extends StatelessWidget{
  //Custom Message PopUp
  mySnackbarMgs(context, message){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Gallery"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text("Welcome to My Photo Gallery!", style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search for Photos...",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 250,
              child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        0, 0, 4, 0
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap:(){mySnackbarMgs(context, "Photo 1 Clicked!");},
                            child: Image.network("https://images.unsplash.com/photo-1682687220742-aba13b6e50ba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
                              fit: BoxFit.fill,
                              height: 70,
                            ),
                          ),
                          Text("Photo 01", style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0, 0, 4, 0
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap:(){mySnackbarMgs(context, "Photo 2 Clicked!");},
                            child: Image.network("https://images.unsplash.com/photo-1682686580224-cd46ea1a6950?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
                              fit: BoxFit.cover,
                              height: 70,
                            ),
                          ),

                          Text("Photo 02", style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap:(){mySnackbarMgs(context, "Photo 3 Clicked!");},
                            child: Image.network("https://images.unsplash.com/photo-1694746027334-66d47a21d645?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
                              fit: BoxFit.cover,
                              height: 70,
                            ),
                          ),
                          Text("Photo 03", style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0, 4, 4, 0
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap:(){mySnackbarMgs(context, "Photo 4 Clicked!");},
                            child: Image.network("https://images.unsplash.com/photo-1694279873840-ae24c33e3359?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1467&q=80",
                              fit: BoxFit.cover,
                              height: 70,
                            ),
                          ),
                          Text("Photo 04", style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0, 4, 4, 0
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap:(){mySnackbarMgs(context, "Photo 5 Clicked!");},
                            child: Image.network("https://images.unsplash.com/photo-1683009427666-340595e57e43?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
                              fit: BoxFit.cover,
                              height: 70,
                            ),
                          ),
                          Text("Photo 05", style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0, 4, 0, 0
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap:(){mySnackbarMgs(context, "Photo 6 Clicked!");},
                            child: Image.network("https://images.unsplash.com/photo-1693788452415-705a7f6d1d5c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1632&q=80",
                              fit: BoxFit.cover,
                              height: 70,
                            ),
                          ),

                          Text("Photo 06", style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: ClipOval(
                child: Image.network(
                  'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1443&q=80',
                  fit: BoxFit.cover,
                  height: 50,
                  width: 50,
                ),
              ),
              title: Text("Photo 1", style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text("Description for Photo 1"),
            ),
            ListTile(
              leading: ClipOval(
                child: Image.network(
                  'https://images.unsplash.com/photo-1574158622682-e40e69881006?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1480&q=80',
                  fit: BoxFit.cover,
                  height: 50,
                  width: 50,
                ),
              ),
              title: Text("Photo 2", style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text("Description for Photo 2"),
            ),
            ListTile(
              leading: ClipOval(
                child: Image.network(
                  'https://plus.unsplash.com/premium_photo-1677101221533-52b45823a2dc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80',
                  fit: BoxFit.cover,
                  height: 50,
                  width: 50,
                ),
              ),
              title: Text("Photo 3", style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text("Description for Photo 3"),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 20,
              ),
              child: Column(
                children: [
                  IconButton(onPressed: (){mySnackbarMgs(context, "Photos Uploaded Successfully!");}, icon: Icon(Icons.add_circle,
                    size: 42,
                    color: Colors.blue,
                  )),
                ],
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }

}
