part of 'gpt_bloc.dart';

enum RequestStatus { idle, progress }

enum ChatStatus { initial, engage, failure }

enum NetworkStatus { connected, disconnected }

enum ChatMode { text, voice }

class GPTState extends Equatable {
  final RequestStatus requestStatus;
  final ChatStatus chatStatus;
  final ChatMode mode;
  //final NetworkStatus networkStatus;
  final List<MessageLayoutModel> messages;

  const GPTState._(
      {this.requestStatus = RequestStatus.idle,
      this.chatStatus = ChatStatus.initial,
      this.mode = ChatMode.text,
      this.messages = const <MessageLayoutModel>[]});

  const GPTState.initial() : this._();
  const GPTState({
    required this.requestStatus,
    required this.chatStatus,
    required this.messages,
    required this.mode,
  });

  GPTState copyWith({
    RequestStatus? requestStatus,
    ChatStatus? chatStatus,
    ChatMode? mode,
    List<MessageLayoutModel>? messages,
  }) {
    return GPTState(
      chatStatus: chatStatus ?? this.chatStatus,
      requestStatus: requestStatus ?? this.requestStatus,
      mode: mode ?? this.mode,
      messages: messages ?? this.messages,
    );
  }

  @override
  List<Object?> get props => [requestStatus, chatStatus, mode, messages];
}
