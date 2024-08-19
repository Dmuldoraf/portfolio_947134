import 'dart:math';
import 'dart:async';

void alleAufgabenUebung2() {
  uebung2Aufgabe1();
  uebung2Aufgabe2();
  uebung2Aufgabe3();
  uebung2Aufgabe4();
  uebung2Aufgabe5();
  uebung2Aufgabe6();
  uebung2Aufgabe7();
  uebung2Aufgabe8();
}

void uebung2Aufgabe1() {
/* ## Aufgabe 1: Typinferenz und Datentypen
**Beschreibung:** Erstelle Variablen mit `var` und `final` und weise ihnen initiale Werte zu. Überprüfe und erkläre, warum Dart den spezifischen Datentyp inferiert hat. Drucke die Typen und Werte dieser Variablen.
 */
  var zahl = 5;
  final wort = 'Hallo';

  // Dart inferiert den Typ der Variablen aufgrund des initialen Wertes
  // zahl ist vom Typ int, weil der initiale Wert 5 eine Ganzzahl ist
  // wort ist vom Typ String, weil der initiale Wert "Hallo" ein String ist

  print('${zahl.toString()}: ${(zahl.runtimeType.toString())}');
  print('${wort.toString()}: ${(wort.runtimeType.toString())}');
}

void uebung2Aufgabe2() {
  /* ## Aufgabe 2: Objektorientierung
  **Beschreibung:** Definiere eine Klasse `Auto` mit den Eigenschaften Marke, Modell und Baujahr. Implementiere eine Methode, die das Alter des Autos basierend auf dem aktuellen Jahr berechnet. Erstelle ein Objekt dieser Klasse und drucke das Alter des Autos.
  */
  Auto a1 = Auto(marke: 'VW', modell: 'Golf', baujahr: 1994);
  var date = DateTime.now();
  print('Alter des ${a1.marke}\'s: ${(date.year - a1.baujahr).toString()}');
}

class Auto {
  String marke = '';
  String modell = '';
  int baujahr = 0;
  Auto({required this.marke, required this.modell, required this.baujahr});
}

uebung2Aufgabe3() {
  /* ## Aufgabe 3: Funktionale Programmierung
  **Beschreibung:** Verwende `map` und `reduce` Methoden, um die Summe aller Zahlen in einer Liste zu berechnen, die durch 3 teilbar sind. Verwende dazu eine Liste von zufällig generierten Zahlen.
  */
  Random rnd = Random();
  List<int> numbers = [];
  var td3 = (int zahl) {
    return ((zahl % 3) == 0);
  }; // td3 - teilbar durch 3

  for (int i = 0; i < 10; i++) {
    numbers.add(rnd.nextInt(30));
  }

  print('Liste:\n${numbers}');
  int sum = 0;
/*   numbers.forEach((element) {
    if (td3(element)) {sum = sum + element;}
  }); */
  //sum= numbers.where((e) => td3(e)).map((e)=> (sum + e);
  print('Map: \n${numbers}\nSumme: ${sum}');
  sum = 0;
  sum = numbers.where((e) => td3(e)).reduce((sum, element) => sum + element);
  print('Reduce: \n${numbers}\nSumme: ${sum}');
}

uebung2Aufgabe4() async {
  /* ## Aufgabe 4: Asynchrone Programmierung
**Beschreibung:** Schreibe eine asynchrone Funktion, die zufällig entscheidet, ob eine Operation erfolgreich war oder nicht, und wirf eine Ausnahme im Fehlerfall. Verwende `try`, `catch` und `finally` zur Fehlerbehandlung und drucke das Ergebnis oder den Fehler.
 */
  try {
    Random rnd = Random();
    var success = rnd.nextBool();
    if (!success) {
      throw Exception('Operation failed');
    }
    print('Operation successful');
  } catch (e) {
    print('Error: $e');
  } finally {
    print('asd');
  }
}

/* ## Aufgabe 5: Streams und Isolates
**Beschreibung:** Erstelle einen Stream, der fortlaufend Zahlen emittiert. Verbrauche diesen Stream in einem Isolate und drucke jede Zahl mit einer Verzögerung von einer Sekunde.
 */

uebung2Aufgabe5() {
  Stream<int> numberStream = Stream<int>.periodic(Duration(seconds: 1), (count) => count);
  numberStream.listen((number) {
    print(number);
  });
}

uebung2Aufgabe6() {
/* ## Aufgabe 6: Metaprogrammierung
**Beschreibung:** Nutze die `mirrors` Bibliothek, um alle Methoden einer Klasse zu inspizieren, die du in einer früheren Aufgabe definiert hast. Drucke die Namen dieser Methoden.
 */

}


uebung2Aufgabe7() {}
/* ## Aufgabe 7: Generics und Collections
**Beschreibung:** Erstelle eine generische Klasse `Box<T>`, die irgendeinen Inhalt speichern kann. Füge Methoden zum Speichern und Abrufen des Inhalts hinzu. Demonstriere die Nutzung dieser Box mit mindestens zwei verschiedenen Datentypen.
 */

uebung2Aufgabe8() {}
/* ## Aufgabe 8: Netzwerkprogrammierung
**Beschreibung:** Schreibe ein Programm, das eine HTTP-Anfrage an eine API sendet, um Daten zu holen (nutze eine öffentliche API wie https://jsonplaceholder.typicode.com/posts). Verarbeite die Antwort und drucke einige spezifische Details aus den Daten.
 */