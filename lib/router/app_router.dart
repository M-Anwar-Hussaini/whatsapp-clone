import 'package:go_router/go_router.dart';
import 'package:whatsapp_clone/models/chat/chat_model.dart';
import 'package:whatsapp_clone/router/route_names.dart';
import 'package:whatsapp_clone/screens/conversation/conversation_screen.dart';
import 'package:whatsapp_clone/screens/home/home_screen.dart';

class AppRouter {
  const AppRouter._();

  static GoRouter get router {
    return GoRouter(
      initialLocation: RouteNames.main,
      routes: [
        GoRoute(
          path: RouteNames.main,
          builder: (context, state) {
            return HomeScreen();
          },
        ),
        GoRoute(
          path: RouteNames.conversation,
          builder: (context, state) {
            return ConversationScreen(chat: state.extra as ChatModel);
          },
        ),
      ],
    );
  }
}
