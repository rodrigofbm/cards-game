import 'card.dart';

class Deck {
  List<Card> cards = [];
  
  Deck() {
    addCards();
  }
  
  void addCards() {
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
    var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];
    
    for(var suit in suits) {
      for(var rank in ranks) {
        cards.add(new Card(suit, rank));
      }
    }
  }
  
  Iterable<Card> cardsWithSuit(String suit) {
    //every card that satisfies "card.suit == suit" is saved in a Iterable<Card>
    //then returned by the method
    return cards.where((card) => card.suit == suit);
  }
  
  void shuffle() {
    cards.shuffle();
  }
  
  List<Card> deal(int handSize) {
    // hand create a new List of Cards that reference from the 0 to handSize value in
    // cards list.
    var hand = cards.sublist(0, handSize);
    // Then we "remove" that Cards from cards and update it
    cards = cards.sublist(handSize);
    
    return hand;
  }
  
  String toString(){
    return cards.toString();
  }
}