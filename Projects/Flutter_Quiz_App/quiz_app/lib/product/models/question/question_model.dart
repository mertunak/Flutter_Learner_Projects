class QuestionModel{
  
  final String question;
  final List<String> answers;
  late List<String> shuffledList;

  QuestionModel(this.question, this.answers){
    
    shuffledList = List.of(answers);
    shuffledList.shuffle();
  }

  List<String> get shuffledAnswers => shuffledList;
}