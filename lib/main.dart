import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: profil(),
    ),
  );
}

class profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("D2 - Best Game"),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        left: 20,
                        right: 50,
                      ),
                      child: Column(
                        children: <Widget>[
                          imageload(30, 150, 75,
                              'https://img.ppe.pl/upload/news/19/12/42/800/380/1912420498.jpg')
                        ],
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            child: Text(
                          "Destiny 2",
                          style: TextStyle(fontSize: 15),
                        )),
                        StarsRow(3)
                      ],
                    )
                  ],
                ),
                Container(
                    margin: const EdgeInsets.only(
                        top: 30, left: 7, right: 7, bottom: 7),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              color: Colors.grey,
                              spreadRadius: 5)
                        ]),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              top: 20, left: 40, right: 40, bottom: 10),
                          child: Column(
                            children: <Widget>[
                              imageload(20, 400, 155,
                                  'https://wallpaperaccess.com/full/34604.jpg')
                            ],
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              StarsRow(3),
                              TextButton(
                                onPressed: () {
                                  print("Like");
                                },
                                child: Text("Like"),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 16),
                          child: Text(
                            "Wyrusz w g????b ??wiata Destiny 2, aby odkry?? tajemnice Uk??adu S??onecznego i wzi???? udzia?? w dynamicznej pierwszoosobowej strzelance. Odblokuj pot????ne zdolno??ci ??ywio????w i zacznij gromadzi?? niezwyk??y sprz??t, dzi??ki kt??remu dostosujesz wygl??d i styl rozgrywki swojego Stra??nika do w??asnych potrzeb. We?? udzia?? w widowiskowej fabule Destiny 2, wymagaj??cych misjach w trybie wsp????pracy lub w rozmaitych trybach PvP w pojedynk?? lub ze znajomymi. Pobierz za darmo ju?? dzi?? i zapisz swoj?? legend?? w gwiazdach."
                            "\nWci??gaj??ca fabu??a\n"
                            "Jeste?? Stra??nikiem ??? obro??c?? Ostatniego Miasta ludzko??ci w Uk??adzie S??onecznym obl????onym przez haniebnych z??oczy??c??w. Sp??jrz w gwiazdy i staw czo??o Ciemno??ci. To pocz??tek twojej legendy."
                            "\nKlasy Stra??nik??w\n"
                            "Wybieraj mi??dzy pancernym Tytanem, mistycznym Czarownikiem a zwinnym ??owc??."
                            "\nTytan\n"
                            "Tytani s?? zdyscyplinowani i dumni. Potrafi?? zar??wno zaciekle atakowa??, jak i skutecznie broni?? pozycji. Rozpal sw??j m??ot, rozpruwaj niebiosa b??yskawicami i sta?? do walki z dowolnym wrogiem. Twoja dru??yna b??dzie czu?? si?? pewnie pod ochron?? twojej tarczy."
                            "\nCzarownik\n"
                            "Czarownicy wykorzystuj?? tajemnice wszech??wiata jako bro?? pomagaj??c?? im przetrwa?? i pokona?? wrog??w. Siej spustoszenie na polu bitwy i w mgnieniu oka niszcz wrog??w. Ci, kt??rzy s?? po twojej stronie, poznaj?? czym jest prawdziwa moc ??wiat??a."
                            "\n??owca\n"
                            "??owcy s?? r??wnie zwinni, co odwa??ni. Poruszaj?? si?? szybko i jeszcze szybciej dobywaj?? broni. Strzelaj ze z??otego pistoletu, przedzieraj si?? przez wrog??w niczym wiatr albo atakuj z ciemno??ci. Znajd?? wroga, wyceluj w niego i zako??cz walk??, zanim si?? w og??le rozpocznie."
                            "\nWieloosobowy tryb rywalizacji i wsp????pracy\n"
                            "Wsp????pracuj lub rywalizuj ze znajommi oraz innymi Stra??nikami w najr????niejszych trybach PvE i PvP.",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: "Roboto"),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}

class StarsRow extends StatelessWidget {
  final int rating;

  const StarsRow(
    this.rating, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> stars = [];
    for (int i = 0; i < 5; i++) {
      if (i < rating) {
        stars.add(Icon(Icons.star));
      } else {
        stars.add(Icon(Icons.star_border));
      }
    }
    return Row(children: stars);
  }
}

class imageload extends StatelessWidget {
  final double text;
  final double text1;
  final double text2;
  final String image;

  const imageload(
    this.text,
    this.text1,
    this.text2,
    this.image, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> box = [];
    return ClipRRect(
      borderRadius: BorderRadius.circular(text),
      child: Image.network(
        (image),
        width: text1,
        height: text2,
        loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes
                  : null,
            ),
          );
        },
      ),
    );
  }
}
