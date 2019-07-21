class Card {
  String suit;
  String rank;
  
  Card(this.suit, this.rank);
  
  String toString(){
    return '$rank of $suit';
  }
}