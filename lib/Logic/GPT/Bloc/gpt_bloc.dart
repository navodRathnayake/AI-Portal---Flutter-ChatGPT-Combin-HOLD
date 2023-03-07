import 'package:bloc/bloc.dart';
import 'package:chatgpt/Logic/GPT/Data/Models/message_layout_model.dart';
import 'package:equatable/equatable.dart';

part 'gpt_event.dart';
part 'gpt_state.dart';

class GptBloc extends Bloc<GptEvent, GPTState> {
  GptBloc() : super(const GPTState.initial()) {
    on<InputTextSubmittedEvent>(_onInputSubmitted);
  }

  Future<void> _onInputSubmitted(
    InputTextSubmittedEvent event,
    Emitter<GPTState> emit,
  ) async {}
}
