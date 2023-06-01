import 'package:flutter/material.dart';
import 'package:zasconta_graphql/application/bloc/message_bloc/message_bloc_bloc.dart';
import 'package:zasconta_graphql/core/injection/injection_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zasconta_graphql/domain/models/message_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late MessageBloc bloc;
  final messagesList = <MessageModel>[];

  @override
  void initState() {
    bloc = getIt<MessageBloc>();
    bloc.add(const MessageBlocEvent.connect());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc,
      child: Scaffold(
        floatingActionButton: BlocBuilder<MessageBloc, MessageBlocState>(
          builder: (context, state) {
            return state.when(
              loading: () => const FloatingActionButton(
                  onPressed: null, child: CircularProgressIndicator()),
              connected: () => FloatingActionButton.extended(
                onPressed: () {
                  context
                      .read<MessageBloc>()
                      .add(const MessageBlocEvent.close());
                },
                label: const Text('Disconnect'),
              ),
              closed: () => FloatingActionButton.extended(
                  onPressed: () {
                    context
                        .read<MessageBloc>()
                        .add(const MessageBlocEvent.connect());
                  },
                  label: const Text('Connect')),
            );
          },
        ),
        appBar: AppBar(title: const Text('Message')),
        body: StreamBuilder<MessageModel?>(
          stream: bloc.messageStream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final data = snapshot.data;

              if (data != null) {
                messagesList.add(data);
              }

              return ListView.builder(
                itemCount: messagesList.length,
                itemBuilder: (context, index) {
                  final message = messagesList[index];

                  return ListTile(
                    title: Text(message.content),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return const Center(
                child: Text('An error has occurred while receiving messages.'),
              );
            }
            return const Center(
              child: Text('No messages yet!'),
            );
          },
        ),
      ),
    );
  }
}
