import 'dart:async';
import 'dart:convert';

import 'package:web_socket_client/web_socket_client.dart';

class ChatWebService {
  // we here privatised the ChatWebService class i.e it means
  // we singleton this class, whenever we create an instance of this class
  // it will always return the same instance.

  static final _instance = ChatWebService._internal();
  WebSocket? _socket;

  factory ChatWebService() => _instance;

  ChatWebService._internal();

  final StreamController<Map<String, dynamic>> _contentController = StreamController<Map<String, dynamic>>();

  Stream<Map<String, dynamic>> get contentStream => _contentController.stream;

  void connect() {
    _socket = WebSocket(Uri.parse("ws://localhost:8000/ws/chat"));

    _socket!.messages.listen((message) {
      // ignore: unused_local_variable
      final data = json.decode(message);
      if (data["type"] == "content") {
        _contentController.add(data);
      }
    });
  }

  void chat(String query) {
    _socket!.send(json.encode({"query": query}));
  }
}