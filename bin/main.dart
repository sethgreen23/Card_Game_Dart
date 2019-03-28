import 'main_functions.dart';

main() {
//we need a functions to take the elements of the card and tables
List<int> cards=[1,2,3,4,5,6,7,8,9,10,11,12,13];
List<String> types=["Heart","Club","Diamon","Spider"];
//creating a random number from the cards and types Lists
int cardRand=randomNumber(cards);
int typeRand=randomNumber(types);
//cleaning the result we get from the card List exemple for index 0=>"Ace"
String cardName=sanitizeCards(cardRand,cards);
//getting the results from the type List exemple for the index 0=>"Heart"
String typeName=sanitizeTypes(typeRand,types);
//putting the results on a map
Map<String,String> results= processedResults(cardName,typeName);
//printing the element inside the map by splitting the keys and values on separate Lists
// after that we can access them with there appropriate index
printResults(results);
}
