part of 'gpt_bloc.dart';

enum MessageSource { user, app }

class GPTState extends Equatable {
  final MessageSource source;
  final String content;
  final bool? feedback;
  @override
  List<Object?> get props => throw UnimplementedError();
}
