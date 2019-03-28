import 'dart:math';
import 'dart:io';
//return a random index from  a List
int randomNumber(List table){
  Random rand=new Random();
  return rand.nextInt(table.length);
}
//sanitise the output of the cards List exemple for index 0=>"Ace"
String sanitizeCards(int cardRand,List table){
  switch(cardRand){
    case 0:
      return "Ace";
      break;
    case 10:
      return "Jack";
      break;
    case 11:
      return "Queen";
      break;
    case 12:
      return "King";
    default:
      return table[cardRand].toString();
  }
}
//return the value of the random type index
String sanitizeTypes(int typeRand,List table){
  return table[typeRand];
}
//create a map that hold the results of the processed data
Map<String,String> processedResults (String cardname,String cardtype){
  return {cardname:cardtype};
}
//print the result from the map after getting the keys and values in separate Lists
void printResults(Map<String,String> results){
  List<String> cardResult=results.keys.toList();
  List<String> typeResult=results.values.toList();
  if(cardResult[0]=="8"|| cardResult[0].toLowerCase()=="ace"){
    print("You have got an ${cardResult[0]} of ${typeResult[0]}");
  }else{
    print("You have got a ${cardResult[0]} of ${typeResult[0]}");
  }

}