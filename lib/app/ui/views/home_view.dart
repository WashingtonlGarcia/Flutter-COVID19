import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_covid/app/controllers/home_controller.dart';
import 'package:flutter_covid/app/data/models/data_model.dart';
import 'package:flutter_covid/app/ui/widgets/center_circular_indicator_widget.dart';
import 'package:flutter_covid/app/ui/widgets/home/home.dart';
import 'package:flutter_covid/app/ui/widgets/message_widget.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text(
            'COVID-19',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          )),
      body: FutureBuilder(
        future: controller.handlesGettingTheData(),
        builder: (BuildContext context, AsyncSnapshot<List<DataModel>> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return CenterCircularIndicatorWidget();
            case ConnectionState.done:
            case ConnectionState.active:
              if (snapshot.data != null) {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  padding: const EdgeInsets.all(8),
                  itemBuilder: (context, index) {
                    final DataModel _dataModel = snapshot.data[index];
                    return ListTileWidget(dataModel: _dataModel);
                  },
                );
              } else {
                return MessageWidget();
              }
              break;

            default:
              return MessageWidget();
              break;
          }
        },
      ),
    );
  }
}
