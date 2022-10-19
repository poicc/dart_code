import 'package:flutter/material.dart';
import 'package:flutter_demo/file/phone_model.dart';
import 'package:provider/provider.dart';
import 'package:sqlite3/sqlite3.dart' as sqlite;
// import 'package:sqlite3/src/common/result_set.dart' as Row;

class SqlitePhonePage extends StatefulWidget {
  const SqlitePhonePage({Key? key}) : super(key: key);

  @override
  State<SqlitePhonePage> createState() => _SqlitePhonePageState();
}

class _SqlitePhonePageState extends State<SqlitePhonePage> {
  List<Friend> map = [];
  final phoneController = TextEditingController(text: '18851699003');
  final nameController = TextEditingController(text: 'crq');
  String phone = '18851699003';
  String name = '123';
  final db = sqlite.sqlite3.openInMemory();
  late FocusNode _focusNode;
  final TextEditingController _textEditingController = TextEditingController();
  String searchContent = '';

  void _init() {
    db.execute('''
    CREATE TABLE friend (
      id INTEGER NOT NULL PRIMARY KEY,
      name TEXT NOT NULL,
      phone TEXT NOT NULL,
      avatar TEXT NOT NULL
    );
  ''');

    // Prepare a statement to run it multiple times:
    final stmt =
        db.prepare('INSERT INTO friend (name,phone,avatar) VALUES (?,?,?)');
    stmt
      ..execute([
        'The Beatles',
        '18851699003',
        'https://avatars.githubusercontent.com/u/59445871?v=4'
      ])
      ..execute([
        'Led Zeppelin',
        '18851699003',
        'https://images.pexels.com/photos/13684830/pexels-photo-13684830.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load'
      ])
      ..execute([
        'The Who',
        '18851699003',
        'https://images.pexels.com/photos/13515706/pexels-photo-13515706.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load'
      ])
      ..execute([
        'Nirvana',
        '18851699003',
        'https://images.pexels.com/photos/13139097/pexels-photo-13139097.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load'
      ]);

    stmt.dispose();
    _search();
  }

  void _addPhone() {
    final stmt =
        db.prepare('INSERT INTO friend (name,phone,avatar) VALUES (?,?,?)');
    stmt.execute(
        [name, phone, 'https://avatars.githubusercontent.com/u/59445871?v=4']);
    stmt.dispose();
    _search();
  }

  void _search() {
    final sqlite.ResultSet resultSet;
    if (searchContent != '') {
      resultSet = db.select(
          'SELECT * FROM friend WHERE name LIKE ?', ['%$searchContent%']);
    } else {
      resultSet = db.select('SELECT * FROM friend');
    }

    setState(() {
      map.length = 0;
    });
    for (final sqlite.Row row in resultSet) {
      setState(() {
        map.add(
            Friend(row['id'] as int, row['name'], row['phone'], row['avatar']));
      });
    }

    // db.dispose();
  }

  void _delete(id) {
    print(id);
    final stmt = db.prepare('DELETE FROM friend WHERE id=?');
    stmt.execute([id]);
    stmt.dispose();
    _search();
  }

  @override
  void initState() {
    super.initState();
    _init();
    _focusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<PhoneModel>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade300,
        titleSpacing: 0,
        //清除title左右padding，默认情况下会有一定的padding距离
        toolbarHeight: 44,
        elevation: 0,
        title: SizedBox(
          width: double.infinity,
          height: 30,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: double.infinity,
                  margin: const EdgeInsets.only(left: 16),
                  decoration: BoxDecoration(
                      color: Colors.red.shade300,
                      borderRadius: BorderRadius.circular(4)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(padding: EdgeInsets.only(left: 8)),
                      const Icon(Icons.search),
                      const Padding(padding: EdgeInsets.only(left: 8)),
                      Expanded(
                        flex: 1,
                        child: TextField(
                          controller: _textEditingController,
                          autofocus: true,
                          focusNode: _focusNode,
                          style: const TextStyle(
                              fontSize: 14, color: Colors.white),
                          maxLines: 1,
                          onSubmitted: (value) {
                            setState(() {
                              searchContent = _textEditingController.text;
                            });
                            _search();
                          },
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(left: 8)),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _focusNode.unfocus();
                },
                child: Container(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: const Text("取消",
                      style: TextStyle(fontSize: 16, color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: map.length,
        itemBuilder: (BuildContext context, int index) => Wrap(
          children: [
            Column(
              children: [
                ListTile(
                  title: Text(map[index].name),
                  subtitle: Text(map[index].phone),
                  leading: CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage(map[index].avatar),
                  ),
                  trailing: ElevatedButton(
                    onPressed: () {
                      _delete(map[index].id);
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.resolveWith((states) {
                        return Colors.red[300];
                      }),
                    ),
                    child: const Text('删除'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red.shade300,
        onPressed: () => {
          showDialog(
              context: context,
              builder: (context) {
                return Material(
                  type: MaterialType.transparency,
                  child: Center(
                      child: Container(
                    height: 300,
                    width: 300,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.all(20),
                            child: Stack(
                              children: const <Widget>[
                                Align(
                                  alignment: Alignment.center,
                                  child: Text('添加联系人'),
                                ),
                              ],
                            )),
                        const Divider(),
                        Container(
                          padding: const EdgeInsets.all(10),
                          width: double.infinity,
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    border: Border(
                                  bottom:
                                      BorderSide(color: Colors.grey.shade200),
                                )),
                                child: TextField(
                                  controller: phoneController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'phone',
                                    hintStyle:
                                        TextStyle(color: Colors.grey.shade400),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8),
                                child: TextField(
                                  controller: nameController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'name',
                                    hintStyle:
                                        TextStyle(color: Colors.grey.shade400),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    phone = phoneController.text;
                                    name = nameController.text;
                                  });
                                  _addPhone();
                                  Navigator.pop(context);
                                  counter.changeName(name);
                                  counter.changePhone(phone);
                                },
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(colors: [
                                      Colors.red.shade100,
                                      Colors.red.shade300,
                                    ]),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '保存',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
                );
              }).then((value) {
            print("$value");
          })
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Friend {
  int id;
  String name;
  String phone;
  String avatar;

  Friend(this.id, this.name, this.phone, this.avatar);
}
