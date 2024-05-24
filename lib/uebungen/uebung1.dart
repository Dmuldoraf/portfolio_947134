/*
UEBUNGSBATT 1 Aufgaben 1-8
https://moodle.thm.de/pluginfile.php/1140906/mod_resource/content/1/Aufgabenblatt1.md
*/
import 'dart:math';

void alleAufgabenUebung1() {
  uebung1Aufgabe1();
  uebung1Aufgabe2();
  uebung1Aufgabe3();
  uebung1Aufgabe4();
  uebung1Aufgabe5();
  uebung1Aufgabe6();
  uebung1Aufgabe7();
  uebung1Aufgabe8();
}

void uebung1Aufgabe1() {
  print('############### Übung1 Aufgabe1 ###############');
  int zahl1 = 23; //`int`, `double`, `String`, `bool`
  double zahl2 = 23.23;
  String wort = 'Hallo';
  bool himmelIstGelb = false;
  print(
      'Zahl1(int): $zahl1\nZahl2(double): $zahl2\nWort(String): $wort\nHimmel ist gelb:(bool) $himmelIstGelb\n');
}

void uebung1Aufgabe2() {
  print('############### Übung1 Aufgabe2 ###############');
  int zahl1 = 22;
  if ((zahl1 % 2) == 0) {
    print('$zahl1 ist gerade\n');
  } else {
    print('$zahl1 ist ungerade\n');
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

  print('Größere Zahl ist: ' + (maxNumber(4, 3)).toString() + '\n');
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
    int index = fruechtchen.indexOf(element);
    print('$index: $element');
  });
}

void uebung1Aufgabe7() {
  print('############### Übung1 Aufgabe7 Teil A ###############');
  Random random = Random();
  Set<int> numbers = {};
  for (int i = 0; i < 20; i++) {
    numbers.add(random.nextInt(20));
  }
  bool dreiDabei = numbers.contains(3);
  print('dreiDabei: $dreiDabei');
  print(numbers.toList().toString());

  print('*************** Übung1 Aufgabe7 Teil B ***************');
  Map<String, String> stadtLand = {
    'Schweiz': 'Bern',
    'Deutschland': 'Berlin',
    'Polen': 'Warschau'
  };
  stadtLand.forEach((key, value) {
    print('Land: $key\nStadt: $value');
  });
}

void uebung1Aufgabe8() {
  print('############### Übung1 Aufgabe8 ###############');
  List<int> numbers = [34, 32, 3, 7, 89, 8];
  List<String> fruechtchen = [
    'Abfel',
    'Birme',
    'Schwamm',
    'Taube',
    'Nuesschen'
  ];
  var erstEelement = (List<dynamic> liste) {
    return liste[0].toString();
  };
/*   String ersteElement(List<dynamic> liste) {
    return liste[0].toString();
  } */

  print(numbers.toString());
  print(fruechtchen.toString());
  print('Erste Element von numbers: ' + erstEelement(numbers));
  print('Erste Element von fruechtchen: ' + erstEelement(fruechtchen));
  // ## Aufgabe 8: Generics**Beschreibung:** Schreibe eine generische Funktion `ersteElement`, die eine Liste von Elementen eines beliebigen Typs akzeptiert und
  // das erste Element der Liste zurückgibt. Teste diese Funktion mit einer Liste von Integers und einer Liste von Strings.');
}
