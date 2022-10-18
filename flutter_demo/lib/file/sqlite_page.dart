import 'package:flutter/material.dart';
import 'package:sqlite3/sqlite3.dart' as sqlite;
// import 'package:sqlite3/src/common/result_set.dart' as Row;

class SqlitePage extends StatefulWidget {
  const SqlitePage({Key? key}) : super(key: key);

  @override
  State<SqlitePage> createState() => _SqlitePageState();
}

class _SqlitePageState extends State<SqlitePage> {
  List<Artist> map = [];

  void _init() {
    print('Using sqlite3 ${sqlite.sqlite3.version}');

    // Create a new in-memory database. To use a database backed by a file, you
    // can replace this with sqlite3.open(yourFilePath).
    final db = sqlite.sqlite3.openInMemory();

    // Create a table and insert some data
    db.execute('''
    CREATE TABLE artists (
      id INTEGER NOT NULL PRIMARY KEY,
      name TEXT NOT NULL,
      avatar TEXT NOT NULL
    );
  ''');

    // Prepare a statement to run it multiple times:
    final stmt = db.prepare('INSERT INTO artists (name,avatar) VALUES (?,?)');
    stmt
      ..execute([
        'The Beatles',
        'https://avatars.githubusercontent.com/u/59445871?v=4'
      ])
      ..execute([
        'Led Zeppelin',
        'https://avatars.githubusercontent.com/u/59445871?v=4'
      ])
      ..execute(
          ['The Who', 'https://avatars.githubusercontent.com/u/59445871?v=4'])
      ..execute(
          ['Nirvana', 'https://avatars.githubusercontent.com/u/59445871?v=4']);

    // Dispose a statement when you don't need it anymore to clean up resources.
    stmt.dispose();

    // You can run select statements with PreparedStatement.select, or directly
    // on the database:
    final sqlite.ResultSet resultSet =
        db.select('SELECT * FROM artists WHERE name LIKE ?', ['The %']);

    // You can iterate on the result set in multiple ways to retrieve Row objects
    // one by one.
    resultSet.forEach((element) {
      print(element);
      // setState(() {
      //   map.add(element);
      // });
    });
    for (final sqlite.Row row in resultSet) {
      print('Artist[id: ${row['id']}, name: ${row['name']}]');
      setState(() {
        map.add(Artist(row['id'] as int, row['name'], row['avatar']));
      });
    }

    // Register a custom function we can invoke from sql:
    db.createFunction(
      functionName: 'dart_version',
      argumentCount: const sqlite.AllowedArgumentCount(0),
      function: (args) => print(args),
    );
    print(db.select('SELECT dart_version()'));

    // Don't forget to dispose the database to avoid memory leaks
    db.dispose();
  }

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('本地数据库'),
      ),
      body: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 30.0,
          crossAxisSpacing: 10.0,
        ),
        shrinkWrap: true,
        itemCount: map.length,
        itemBuilder: (BuildContext context, int index) => Wrap(
          children: [
            Column(
              children: [
                ListTile(
                  title: Text(map[index].name),
                  leading: CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage(map[index].avatar),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Artist {
  String name;
  int id;
  String avatar;

  Artist(this.id, this.name, this.avatar);
}
