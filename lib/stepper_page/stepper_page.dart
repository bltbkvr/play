import 'package:flutter/material.dart';
import 'package:play/schedule/schedule_setting/schedule_setting.dart';
import 'package:play/stepper_page/stepper/my_stepper.dart';

class StepperPage extends StatefulWidget {
  const StepperPage({Key? key}) : super(key: key);

  @override
  _StepperPageState createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  int currentPage = 0;
  List<Widget> screens = [
    Text("1XXX"),
    Text("2XXX"),
    Text("X3XX"),
    Text("XXX")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          shadowColor: Colors.transparent,
          //backgroundColor: Colors.white,
          //foregroundColor: Colors.black,
          title: Text("Stepper demo"),
          bottom: PreferredSize(
            child: MyStepper(
              current: currentPage,
              totalQty: screens.length,
            ),
            preferredSize: Size(double.infinity, 27),
          )),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child:
            ScheduleSetting(), //Sdelat' tak chto by Container uvelichivalsya po mere dobavleniya itemov
      ),
    );
    // GestureDetector(
    //     onTap: () {
    //       setState(() => currentPage++);
    //     },
    // child: screens[currentPage]));
  }
}
