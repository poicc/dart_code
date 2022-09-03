void main() {
  var gifts = {
    'first': 'Java',
    'secont': 'Dart',
  };
  gifts['third'] = 'JavaScript';
  print(gifts.length);

  print(gifts['first']);
  print(gifts['hhh']); // null 
}
