import 'package:truefalse/model/question.dart';

class QuestionHelper {
  int questionNumber = 0;
  static List<Question> _questionList = [
    Question("The capital of Libya is Benghazi.", false),
    Question("Albert Einstein was awarded the Nobel Prize in Physics.", true),
    Question("Baby koalas are called joeys.", true),
    Question("Gone with the Wind takes place in Savannah, Georgia.", false),
    Question(
        "Brazil is the only country in the Americas whose official language is Portuguese.",
        true),
    Question("The first name of Kramer in Seinfeld is Cosmo.", true),
    Question("The American Civil War ended in 1776.", false),
    Question("A right triangle can never be equilateral.", true),
    Question("The Ford Edsel was named after Henry Ford’s father.", false),
    Question(
        "The Dickens novel Oliver Twist begins with the well-known phrase: “It was the best of times, it was the worst of times.",
        false),
    Question("Paprika” is the Hungarian word for “pepper.", true),
    Question(
        "The Bill of Rights contains 10 amendments to the Constitution", true),
    Question("Snow White’s seven dwarfs all worked as lumberjacks", false),
    Question("The name Sylvia Plath was a pseudonym", false),
    Question("There are seven red stripes in the United States flag.", true),
    Question("The favorite food of the Teenage Mutant Ninja Turtles is pizza.",
        true),
    Question("Thomas Jefferson was the second president of the United States.",
        false),
    Question("No bird can fly backwards.", false),
    Question("Freddy Kreuger is the villain in the “Friday the 13th” movies.",
        false),
  ];

  int lengthList = _questionList.length;

  String getQuestion() => _questionList[questionNumber].question;
  bool getAnswer() => _questionList[questionNumber].answer;
}
