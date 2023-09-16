// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$QuestionViewModel on _QuestionViewModelBase, Store {
  late final _$currentQuestionAtom =
      Atom(name: '_QuestionViewModelBase.currentQuestion', context: context);

  @override
  QuestionModel get currentQuestion {
    _$currentQuestionAtom.reportRead();
    return super.currentQuestion;
  }

  @override
  set currentQuestion(QuestionModel value) {
    _$currentQuestionAtom.reportWrite(value, super.currentQuestion, () {
      super.currentQuestion = value;
    });
  }

  late final _$_QuestionViewModelBaseActionController =
      ActionController(name: '_QuestionViewModelBase', context: context);

  @override
  void answerQuestion(String selectedAnswer, BuildContext context) {
    final _$actionInfo = _$_QuestionViewModelBaseActionController.startAction(
        name: '_QuestionViewModelBase.answerQuestion');
    try {
      return super.answerQuestion(selectedAnswer, context);
    } finally {
      _$_QuestionViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentQuestion: ${currentQuestion}
    ''';
  }
}
