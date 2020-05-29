class Question{

  String _question;
  bool _answer;

  Question(String q , bool a){
    _question = q;
    _answer = a;
  }

  String getQuestion(){
    return this._question;
  }

  bool getAnswer(){
    return this._answer;
  }

}