import 'package:flutter/material.dart';
import 'package:flutter_covid/app/data/models/data_model.dart';
import '../../../utils/extensions/data_time_extension.dart';

class ListTileWidget extends StatelessWidget {
  final DataModel dataModel;

  const ListTileWidget({@required this.dataModel});

  Widget richTextWidget({@required String title, @required String subtitle}) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
              text: title,
              style: TextStyle(
                color: Colors.grey[800],
                fontWeight: FontWeight.w500,
              )),
          TextSpan(
              text: subtitle,
              style: TextStyle(
                color: Colors.grey[800],
              ))
        ],
      ),
    );
  }

  Widget spacerWidget() {
    return const SizedBox(
      height: 8,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            richTextWidget(subtitle: dataModel.state.toString(), title: 'State: '),
            spacerWidget(),
            richTextWidget(subtitle: dataModel.uf.toString(), title: 'UF: '),
            spacerWidget(),
            richTextWidget(subtitle: dataModel.cases.toString(), title: 'Cases: '),
            spacerWidget(),
            richTextWidget(subtitle: dataModel.deaths.toString(), title: 'Deaths: '),
            spacerWidget(),
            richTextWidget(subtitle: dataModel.suspects.toString(), title: 'Suspects: '),
            spacerWidget(),
            richTextWidget(subtitle: dataModel.refuses.toString(), title: 'Refuses: '),
            spacerWidget(),
            richTextWidget(subtitle: dataModel.dateTime.format(), title: 'Date: '),
          ],
        ));
  }
}
