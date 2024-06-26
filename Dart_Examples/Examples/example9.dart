void main() {
  Map<String, dynamic> personalInfo = {
    'ad': 'Murat',
    'soyad': 'Keskin',
    'takım': 'Galatasaray',
    'müzikler': ['Rock', 'Pop', 'Jazz']
  };

  print('Ad: ${personalInfo['ad']}');
  print('Soyad: ${personalInfo['soyad']}');
  print('Takım: ${personalInfo['takım']}');
  print('Sevdiği Müzikler:');
  for (var music in personalInfo['müzikler']) {
    print('- $music');
  }
}
