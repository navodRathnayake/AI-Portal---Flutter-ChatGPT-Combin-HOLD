part of 'gpt_bloc.dart';

enum MessageSource { user, app }

abstract class GptState extends Equatable {
  const GptState();

  @override
  List<Object> get props => [];
}

class GptInitial extends GptState {}
