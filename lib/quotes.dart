class Quotes {
  final List<String> _quotes = [
    " Be yourself; everyone else is already taken.",
    "So many books, so little time",
    "Two things are infinite: the universe and human stupidity; and I'm not sure about the universe.",
    "A room without books is like a body without a soul",
    "Be who you are and say what you feel, because those who mind don't matter, and those who matter don't mind",
    "You've gotta dance like there's nobody watching,Love like you'll never be hurt,Sing like there's nobody listening,And live like it's heaven on earth.",
    "You know you're in love when you can't fall asleep because reality is finally better than your dreams",
    "You only live once, but if you do it right, once is enough"
  ];
  int _check = 0;

  int counter() {
    if (_check < _quotes.length) {
      return _check++;
    } else {
      return 0;
    }
  }

  String getQuote() {
    return _quotes[_check];
  }
}
