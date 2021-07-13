import 'package:flutter/material.dart';

class BotHomePage extends StatefulWidget {
  @override
  _BotHomePageState createState() => _BotHomePageState();
}

class _BotHomePageState extends State<BotHomePage> {
  final _msgController = TextEditingController();
  List<Map> messages = [];

  // void response(query) async {
  //   AuthGoogle authGoogle = await AuthGoogle(
  //     fileJson: "assets/servises.json",
  //   ).build();

  //   DialogFlow dialogFlow = DialogFlow(
  //     authGoogle: authGoogle,
  //     language: Language.english,
  //   );
  //   AiResponse aiResponse = await dialogFlow.detectIntent(query);

  //   setState(() {
  //     messages.insert(0, {
  //       "data": 0,
  //       "messages": aiResponse.getListMessage()[0]["text"]["text"][0].toString()
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat-bot"),
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 15, bottom: 10),
                child: Text(
                  "Aujourd'hui, ${DateTime.now().hour} : ${DateTime.now().minute} : ${DateTime.now().second}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Flexible(
              child: ListView.builder(
                itemCount: 0,
                itemBuilder: (context, index) {
                  return chat(
                    message: messages[index]["messages"].toString(),
                    data: messages[index]["data"]
                  );  
                },
              ),
            ),
            Divider(color: Colors.green),
            Container(
              child: ListTile(
                leading: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
                title: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    controller: _msgController,
                    decoration: InputDecoration.collapsed(
                      hintText: "Taper du texte",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    if (_msgController.text.isEmpty) {
                      print("Please type a text");
                    } else {
                      setState(
                        () {
                          messages.insert(
                            0,
                            {
                              "data": 1,
                              "message": _msgController.text,
                            },
                          );
                          // response(_msgController.text);
                          // _msgController.clear();
                        },
                      );
                    }
                    FocusScopeNode currentFocus = FocusScope.of(context);
                    if (!currentFocus.hasPrimaryFocus) {
                      currentFocus.unfocus();
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget chat({String message, int data}) {
  return Container(
    padding: EdgeInsets.only(left: 20, right: 20),
    child: Row(
      mainAxisAlignment:
          data == 1 ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        // For the Robot
        data == 0
            ? CircleAvatar(
                radius: 45,
                backgroundColor: Colors.black,
                child: Icon(Icons.face, size: 25),
              )
            : Container(),

        // All The messages
        Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              color: data == 1 ? Colors.amber : Colors.grey,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: EdgeInsets.all(2),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: 10),
                  Flexible(
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 200),
                      child: Text(
                        "$message",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),

        // For me
        data == 1
            ? CircleAvatar(
                radius: 45,
                backgroundColor: Colors.black,
                child: Icon(Icons.face, size: 25),
              )
            : Container()
      ],
    ),
  );
}
