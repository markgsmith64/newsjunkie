import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsjunkie/bloc/news_item_bloc/news_item_bloc.dart';
import 'package:newsjunkie/route_generator.dart';
import 'package:newsjunkie/screen/news_item_screen/news_item_screen.dart';
import 'package:newsjunkie/service/api/api_service.dart';
import 'package:flutter/services.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
     SystemUiOverlay.bottom, //This line is used for showing the bottom bar
  ]);

  runApp(const NewsJunkieApp());
}

class NewsJunkieApp extends StatelessWidget {
  const NewsJunkieApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<APIService>(
          create: (context) => APIService(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<NewsItemBloc>(
              create: (context) => NewsItemBloc(
                  context.read<APIService>())),
        ],
        child: const MaterialApp(
          title: 'MSTrial App',
          initialRoute: NewsItemScreen.routeName,
          onGenerateRoute: RouteGenerator.generateRoute,
        ),
      ),
    );
  }

}
