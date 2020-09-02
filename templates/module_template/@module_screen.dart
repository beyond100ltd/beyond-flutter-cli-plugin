part of beyond.modules.screens.@module;

class @ModuleScreen extends StatefulWidget {
  final @ModuleController controller;

  @ModuleScreen({@required this.controller, Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _@ModuleState();
}

class _@ModuleState extends State<@ModuleScreen> {
  @ModuleController _controller;

  @override
  void initState() {
    _controller = widget.controller;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Theme.of(context).backgroundColor,
          child: Container(),
        ),
      ),
    );
  }
}
