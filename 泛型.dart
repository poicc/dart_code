void main() {
  List names = <num>[];
  names.add(12);
  names.add(23.4);
  names.forEach((element) {
    print(element);
  });

  Map map = Map<int, String>();
  map[1] = 'success';
  map[2] = 'error';
  map.forEach((key, value) {
    print('$key --- $value');
  });

  List infos = <String>['Seth', 'Kathy', 'Lars'];
  print(infos);

  Map pages = <String, String>{
    'index.html': 'Homepage',
    'robots.txt': 'Hints for web robots'
  };
  print(pages);
}
