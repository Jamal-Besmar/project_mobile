class Questions {
  final String id;
  final String title;
  final Map<String,bool> option ;

  Questions({ required this.id,  required this.title,required this.option});
}
final List <Questions> questions= [
  Questions(id: "10", title: "What is your Name", option: {"Right1":true , "Right11": true, "Wrong11": false , "Wrong1":false }),
  Questions(id: "10", title: "What is your Name", option: {"Right2":true , "Right12": true, "Wrong12": false , "Wrong2":false }),
  Questions(id: "10", title: "What is your Name", option: {"Right3":true , "Right13": true, "Wrong13": false , "Wrong3":false }),
  Questions(id: "10", title: "What is your Name", option: {"Right4":true , "Right14": true, "Wrong14": false , "Wrong4":false }),
  Questions(id: "10", title: "What is your Name", option: {"Right5":true , "Right15": true, "Wrong15": false , "Wrong5":false }),
  Questions(id: "10", title: "What is your Name", option: {"Right6":true , "Right16": true, "Wrong16": false , "Wrong6":false }),
  Questions(id: "10", title: "What is your Name", option: {"Right7":true , "Right17": true, "Wrong17": false , "Wrong7":false }),
  Questions(id: "10", title: "What is your Name", option: {"Right8":true , "Right18": true, "Wrong18": false , "Wrong8":false }),
  Questions(id: "10", title: "What is your Name", option: {"Right9":true , "Right19": true, "Wrong19": false , "Wrong9":false })
];






/*
List randomAnsware(int index)
{
  List  answare =[];
  List <dynamic> randomlist=[] ;
  List<dynamic> randomRight = (questions[index].correct_answer..shuffle());
  List<dynamic> randomWrong = (questions[index].incorrect_answers..shuffle());
  randomRight.forEach((element) => randomlist.add(element));
  randomWrong.forEach((element) => randomlist.add(element));
  answare =randomlist..shuffle();
  return answare;

}
*/
/*
Map  option(int index) {

  Map <String,bool> getSelectedOption={};
  for (int i = 0; i < questions[index].option.length; i++) {
    getSelectedOption.addEntries({questions[index].option.keys.toList()[i]: true}.entries);

  }
  return getSelectedOption;
}

*/