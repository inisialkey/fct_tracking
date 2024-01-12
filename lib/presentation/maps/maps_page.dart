import 'package:fct_tracking/presentation/maps/widgets/panel.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({Key? key}) : super(key: key);

  @override
  State<MapsPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  final PanelController _panelController = PanelController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SlidingUpPanel(
        controller: _panelController,
        body: Column(
          children: [
            SizedBox(
              height: 90,
            ),
            Text('data'),
          ],
        ),
        panelBuilder: (controller) =>
            PanelWidgets(controller: _panelController),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
    );
  }
}
