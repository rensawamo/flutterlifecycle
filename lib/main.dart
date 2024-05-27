import 'package:flutter/material.dart';
import './nextPage.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/pageA',
      routes: {
        '/pageA': (context) => PageA(),
        '/pageB': (context) => NextPage(),
      },
      navigatorObservers: [
        routeObserver,
      ],
    );
  }
}

class PageA extends StatefulWidget {
  PageA({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _PageAState createState() => _PageAState();
}

// 1
// Called as soon as statefulWidget is built
// Called to create state in the widget tree
class _PageAState extends State<PageA> with RouteAware, WidgetsBindingObserver {
//  2
// Initialize the Widget tree.
// Called only once
  @override
  void initState() {
    print("call initState");
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  // 3
  // Called when a dependency of a state object is changed
  @override
  void didChangeDependencies() {
    print("call didChangeDependencies");
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context) as PageRoute);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print("call didChangeAppLifecycleState");
    print("state = $state");
  }

  // 4 or if change
  // Build a UI created with Widget
  // Called repeatedly from various locations
  // Detects and replaces partial trees that have changed
  @override
  Widget build(BuildContext context) {
    print("call build");
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? 'PageA'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'flutter life scycle',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return NextPage();
              },
            ),
          );
        },
        tooltip: 'next',
        child: Icon(Icons.arrow_circle_right),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  // if code change hotreload before build
  @override
  void didUpdateWidget(oldWidget) {
    print("call didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  // 4
  // Called each time a state object is deleted from the tree
  @override
  void deactivate() {
    print("call deactivate");
    super.deactivate();
    routeObserver.unsubscribe(this);
  }

  // 5
  // Called when an object is completely removed from the tree and will never be built again
  @override
  void dispose() {
    print("call dispose");
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didPush() {
    print("call didPush");
    super.didPush();
  }

  @override
  void didPop() {
    print("call didPop");
    super.didPop();
  }

  @override
  void didPopNext() {
    print("call didPopNext");
    super.didPopNext();
  }

  @override
  void didPushNext() {
    print("call didPushNext");
    super.didPushNext();
  }
}
