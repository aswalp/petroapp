import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petroapp/extension/extension.dart';
import 'package:petroapp/models/auditlistmodel.dart';
import 'package:petroapp/providers/allprovider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../models/auditbarmodel.dart';
import '../../models/chartsampledata.dart';

class Auditpage extends ConsumerStatefulWidget {
  const Auditpage({super.key});

  @override
  ConsumerState<Auditpage> createState() => _AuditpageState();
}

class _AuditpageState extends ConsumerState<Auditpage> {
  @override
  Widget build(BuildContext context) {
    final audit = ref.watch(auditProvider);
    final auditlist = ref.watch(auditlistProvider);
    return Column(
      children: [
        audit.when(
          data: (data) {
            log('auditbar:-${data.length}');
            return auditbar(data);
          },
          error: (error, stackTrace) => Center(
            child: Text(error.toString()),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
        SizedBox(
          height: context.responsiveHeight(20),
        ),
        auditlist.when(
          data: (data) => mainauditlist(data),
          error: (error, stackTrace) => Text(error.toString()),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        )
      ],
    );
  }

  Widget auditbar(List<AuditBarModel> data) {
    return SizedBox(
      child: Column(
        children: [
          SfCartesianChart(
            enableAxisAnimation: true,
            plotAreaBorderWidth: 0,
            title: ChartTitle(text: 'Audit Graph bar'),
            primaryXAxis: CategoryAxis(
              majorGridLines: const MajorGridLines(width: 1),
            ),
            primaryYAxis: NumericAxis(
              axisLine: const AxisLine(width: 0),
              labelFormat: '{value}%',
              majorTickLines: const MajorTickLines(size: 1),
              majorGridLines: const MajorGridLines(width: 1),
            ),
            series: <ColumnSeries<ChartSampleData, String>>[
              ColumnSeries<ChartSampleData, String>(
                animationDuration: 2,
                animationDelay: 2,
                color: Colors.blue,
                dataSource: [
                  for (AuditBarModel i in data)
                    ChartSampleData(x: i.item!.split(" ")[0], y: i.count!),
                ],
                xValueMapper: (ChartSampleData datas, _) {
                  log(datas.x);
                  return datas.x;
                },
                // xAxisName: ,
                yValueMapper: (ChartSampleData datas, _) => datas.y,
                dataLabelSettings: const DataLabelSettings(
                  isVisible: true,
                  labelAlignment: ChartDataLabelAlignment.middle,
                  textStyle: TextStyle(fontSize: 10),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget mainauditlist(List<AuditListModel> data) {
    return Column(children: [
      const Text(
        "Audit List",
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 22, color: Colors.black87),
      ),
      SizedBox(
        height: context.responsiveHeight(10),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Audit ID",
            style: TextStyle(
                fontSize: context.responsiveWidth(16),
                color: Colors.black,
                fontWeight: FontWeight.w500),
          ),
          Text(
            "Audit No",
            style: TextStyle(
                fontSize: context.responsiveWidth(16),
                color: Colors.black,
                fontWeight: FontWeight.w500),
          ),
          Text(
            "Audit Location",
            style: TextStyle(
                fontSize: context.responsiveWidth(16),
                color: Colors.black,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
      const Divider(),
      ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(context.responsiveWidth(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  data[index].auditId.toString(),
                  style: TextStyle(
                      fontSize: context.responsiveWidth(16),
                      color: Colors.black54),
                ),
                Text(
                  data[index].auditNo!,
                  style: TextStyle(
                      fontSize: context.responsiveWidth(16),
                      color: Colors.black54),
                ),
                Text(
                  data[index].auditLocation ?? "",
                  style: TextStyle(
                      fontSize: context.responsiveWidth(16),
                      color: Colors.black54),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    ]);
  }
}
