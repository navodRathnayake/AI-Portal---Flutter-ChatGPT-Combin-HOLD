part of 'gpt_bloc.dart';

abstract class GptEvent extends Equatable {
  const GptEvent();

  @override
  List<Object> get props => [];
}

class InputTextSubmittedEvent extends GptEvent {
  final String input;
  const InputTextSubmittedEvent({required this.input});
}

class InputVoiceSubmittedEvent extends GptEvent {}
