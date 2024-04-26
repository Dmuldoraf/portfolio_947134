void alleAufgabenUebung1() {
  uebung1Aufgabe1();
  uebung1Aufgabe2();
  uebung1Aufgabe3();
  uebung1Aufgabe4();
}

void uebung1Aufgabe1() {
  print('############### Übung1 Aufgabe1 ###############');
  int zahl1 = 23; //`int`, `double`, `String`, `bool`
  double zahl2 = 23.23;
  String wort = 'Hallo';
  bool himmelIstGelb = false;
  print(
      'Zahl1(int): $zahl1\nZahl2(double): $zahl2\nWort(String): $wort\nHimmel ist gelb:(bool) $himmelIstGelb\n\n');
}

void uebung1Aufgabe2() {
  print('############### Übung1 Aufgabe2 ###############');
  int zahl1 = 22;
  if ((zahl1 % 2) == 0) {
    print('$zahl1 ist gerade\n\n');
  } else {
    print('$zahl1 ist ungerade\n\n');
  }
}

void uebung1Aufgabe3() {
  print('############### Übung1 Aufgabe3 ###############');
  int maxNumber(int zahl1, int zahl2) {
    if (zahl1 > zahl2) {
      return zahl1;
    } else {
      return zahl2;
    }
  }

  print('Größere Zahl ist: ' + (maxNumber(4, 3)).toString() + '\n\n');
}

void uebung1Aufgabe4() {
  print('############### Übung1 Aufgabe4 ###############');
  int a = 10;
  int b = 5;
  print('a = $a\nb = $b');
  print('Addition: ' + (a + b).toString());
  print('Subtraktion: ' + (a - b).toString());
  print('Multiplikation: ' + (a * b).toString());
  print('Division: ' + (a / b).toString());
  print('Modulo: ' + (a % b).toString());
}

void uebung1Aufgabe5() {
  print('############### Übung1 Aufgabe5 ###############');
  var quadrierDas = (int zahl) => zahl * zahl;
  int a = 4;
  print('Zahl = $a\nQuadriert:' + quadrierDas(a).toString());
}

void uebung1Aufgabe6() {
  print('############### Übung1 Aufgabe6 ###############');
  List<String> fruechtchen = [
    'Abfel',
    'Birme',
    'Schwamm',
    'Taube',
    'Nuesschen'
  ];
/*   for (String element in fruechtchen) {
    print(element);
  } */
  fruechtchen.forEach((element) {
    print(element);
  });
}

void uebung1Aufgabe7() {
  print('############### Übung1 Aufgabe7 ###############');
    
}

void uebung1Aufgabe8() {
  print('############### Übung1 Aufgabe8 ###############');
}
