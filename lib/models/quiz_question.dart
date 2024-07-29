class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    // Create a copy of the List and store in a variable
    final shuffledList = List.of(answers);
    // Shuffle the list
    shuffledList.shuffle();
    // Return the shuffled list
    return shuffledList;
  }
}
