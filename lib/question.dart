class Question {
  String questionText;
  String option1;
  String option2;
  String option3;
  String option4;
  int answer;

  Question(this.questionText, this.option1, this.option2, this.option3,
      this.option4, this.answer);
  static List<Question> getQuestionsList() {
    List<Question> questions = [];

    questions.add(
      Question(
        'O que é Flutter?',
        'Um novo smarthphone.',
        'Um sistema operacional.',
        'Um SDK de desenvolvimento multiplataforma.',
        'Uma linguagem de programação.',
        3,
      ),
    );
    questions.add(
      Question(
        'Qual linguagem de programação é usada pelo o Flutter?',
        'Dart',
        'Java',
        'Javascript',
        'Go',
        1,
      ),
    );

    return questions;
  }
}
