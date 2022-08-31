import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Todo extends StatefulWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  TextEditingController _userInputController = TextEditingController();
  TextEditingController _updateInputController = TextEditingController();

  //List<String> todos = ['Adnan', 'Ahmed', 'Saif'];

  Box? todoBox;

  @override
  void initState() {
    todoBox = Hive.box('todo-list');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            children: [
              TextField(
                controller: _userInputController,
                decoration: const InputDecoration(
                  hintText: "write a new todo",
                ),
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () async {
                    final _userInput = _userInputController.text;

                    await todoBox?.add(_userInput);

                    Fluttertoast.showToast(msg: "New Todo Added");
                  },
                  child: Text("Add"),
                ),
              ),
              Expanded(
                child: ValueListenableBuilder(
                  valueListenable: Hive.box('todo-list').listenable(),
                  builder: (_, box, widget) {
                    return ListView.builder(
                      //itemCount: todos.length,
                      itemCount: todoBox?.keys.toList().length,
                      itemBuilder: (_, index) {
                        return Card(
                          elevation: 5,
                          color: Colors.grey[200],
                          child: ListTile(
                            title: Text(
                              todoBox!.getAt(index).toString(),
                            ),
                            trailing: SizedBox(
                              width: 100,
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) {
                                            return AlertDialog(
                                              title: Text('Update todo'),
                                              content: Column(
                                                children: [
                                                  TextField(
                                                    controller:
                                                        _updateInputController,
                                                    decoration:
                                                        const InputDecoration(
                                                      hintText:
                                                          "Update your todo",
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 200,
                                                    child: ElevatedButton(
                                                      onPressed: () async {
                                                        final _updateInput =
                                                            _updateInputController
                                                                .text;

                                                        print(_updateInput);
                                                        await todoBox!.putAt(
                                                            index,
                                                            _updateInput);
                                                        Navigator.pop(context);
                                                        print('Added');
                                                      },
                                                      child: Text("Update"),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          });
                                    },
                                    icon: Icon(Icons.edit_outlined),
                                    color: Colors.green,
                                  ),
                                  IconButton(
                                    onPressed: () async {
                                      await todoBox!.deleteAt(index);
                                    },
                                    icon: Icon(
                                      Icons.delete_outlined,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
