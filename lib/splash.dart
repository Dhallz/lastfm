import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../main.dart';
import '../services/services.dart';

class Splash extends StatefulWidget {
  final VoidCallback onInitializationComplete;

  const Splash({
    Key? key,
    required this.onInitializationComplete,
  }) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final bool _hasError = false;

  @override
  void initState() {
    super.initState();
    _initializeAsyncDependencies();
  }

  Future<void> _initializeAsyncDependencies() async {
    await initServices();
    // >>> initialize async dependencies <<<
    // >>> register favorite dependency manager <<<
    // >>> reap benefits <<<
    Future.delayed(
      Duration(milliseconds: 1000),
      () => widget.onInitializationComplete(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      home: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (_hasError) {
      return Center(
        child: TextButton(
          onPressed: () => main(),
          child: Text('retry'),
        ),
      );
    }
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                  radius: 60,
                  child: Image(
                    image: AssetImage('assets/images/lastfm_title.png'),
                  )),
              Padding(
                padding: const EdgeInsets.all(64.0),
                child: CupertinoActivityIndicator(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
