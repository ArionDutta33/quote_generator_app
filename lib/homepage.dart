import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _quotes = [
    " Be yourself; everyone else is already taken.",
    "So many books, so little time",
    "Two things are infinite: the universe and human stupidity; and I'm not sure about the universe.",
    "A room without books is like a body without a soul",
    "Be who you are and say what you feel, because those who mind don't matter, and those who matter don't mind",
    "You've gotta dance like theAre's nobody watching,Love like you'll never be hurt,Sing like there's nobody listening,And live like it's heaven on earth.",
    "You know you're in love when you can't fall asleep because reality is finally better than your dreams",
    "You only live once, but if you do it right, once is enough"
  ];
  String currQuote = "Press the button to get the next quote ";
  int counter = 0;
  void getQuote() {
    if (counter < _quotes.length) {
      setState(() {
        currQuote = _quotes[counter];
        counter++;
      });
    } else {
      setState(() {
        currQuote = "Thanks for checking out";
        counter = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "QuoteGen",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            child: Text(
              currQuote,
              style: GoogleFonts.robotoCondensed(
                  fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextButton(
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: Colors.amber,
                  minimumSize: const Size(double.infinity, 1)),
              onPressed: () {
                getQuote();
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  "Next qoute",
                  style: GoogleFonts.robotoCondensed(fontSize: 20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
