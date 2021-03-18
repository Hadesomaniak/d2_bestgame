
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

void main(){
  runApp(MaterialApp(
    home:profil(),
  ),
  );
}


class profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: Text(
              "D2 - Best Game"
          ),
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
                        margin: const EdgeInsets.only(left: 20,right: 50,),
                        child:  Column(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.network(
                                'https://img.ppe.pl/upload/news/19/12/42/800/380/1912420498.jpg',
                                width: 150,
                                height: 75,
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
                              ),
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
                              )
                          ),
                          StarsRow(3)
                        ],
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30, left: 7,right: 7,bottom: 7),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(blurRadius: 10,color: Colors.grey, spreadRadius: 5)
                      ]
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding:EdgeInsets.only(top: 20, left: 40,right: 40, bottom: 10),
                          child:  Column(

                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                           'https://wallpaperaccess.com/full/34604.jpg',

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
                              ),

                            ],
                          ),
                        ),

                        Container(

                          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              StarsRow(3),
                              TextButton(
                                onPressed: () {
                                  print("Like");
                                },
                                child: Text(
                                    "Like"
                                ),
                              ),

                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                          child: Text(
                            "Wyrusz w głąb świata Destiny 2, aby odkryć tajemnice Układu Słonecznego i wziąć udział w dynamicznej pierwszoosobowej strzelance. Odblokuj potężne zdolności żywiołów i zacznij gromadzić niezwykły sprzęt, dzięki któremu dostosujesz wygląd i styl rozgrywki swojego Strażnika do własnych potrzeb. Weź udział w widowiskowej fabule Destiny 2, wymagających misjach w trybie współpracy lub w rozmaitych trybach PvP w pojedynkę lub ze znajomymi. Pobierz za darmo już dziś i zapisz swoją legendę w gwiazdach."
                                "\nWciągająca fabuła\n"
                                "Jesteś Strażnikiem – obrońcą Ostatniego Miasta ludzkości w Układzie Słonecznym oblężonym przez haniebnych złoczyńców. Spójrz w gwiazdy i staw czoło Ciemności. To początek twojej legendy."
                                "\nKlasy Strażników\n"
                                "Wybieraj między pancernym Tytanem, mistycznym Czarownikiem a zwinnym Łowcą."

                                "\nTytan\n"
                                "Tytani są zdyscyplinowani i dumni. Potrafią zarówno zaciekle atakować, jak i skutecznie bronić pozycji. Rozpal swój młot, rozpruwaj niebiosa błyskawicami i stań do walki z dowolnym wrogiem. Twoja drużyna będzie czuć się pewnie pod ochroną twojej tarczy."

                                "\nCzarownik\n"
                                "Czarownicy wykorzystują tajemnice wszechświata jako broń pomagającą im przetrwać i pokonać wrogów. Siej spustoszenie na polu bitwy i w mgnieniu oka niszcz wrogów. Ci, którzy są po twojej stronie, poznają czym jest prawdziwa moc Światła."

                                "\nŁowca\n"
                                "Łowcy są równie zwinni, co odważni. Poruszają się szybko i jeszcze szybciej dobywają broni. Strzelaj ze złotego pistoletu, przedzieraj się przez wrogów niczym wiatr albo atakuj z ciemności. Znajdź wroga, wyceluj w niego i zakończ walkę, zanim się w ogóle rozpocznie."
                                "\nWieloosobowy tryb rywalizacji i współpracy\n"
                                "Współpracuj lub rywalizuj ze znajommi oraz innymi Strażnikami w najróżniejszych trybach PvE i PvP.",
                            style: TextStyle(color: Colors.black, fontSize: 15, fontFamily:"Roboto"),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    )
                  ),
                      ],
                    ),
                  ),

        )
    );

  }
}
class StarsRow extends StatelessWidget {
  final int rating;

  const StarsRow(this.rating, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> stars = [];
    for(int i = 0; i < 5; i++)
    {
      if( i < rating){
        stars.add(Icon(Icons.star));
      }
      else
      {
        stars.add(Icon(Icons.star_border));
      }

    }
    return Row(
        children:
        stars
    );
  }
}



