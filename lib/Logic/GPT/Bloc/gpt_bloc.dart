import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'gpt_event.dart';
part 'gpt_state.dart';

class GptBloc extends Bloc<GptEvent, GptState> {
  GptBloc() : super(GptInitial()) {
    on<GptEvent>((event, emit) {});
  }
}
