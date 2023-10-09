import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:petroapp/extension/extension.dart';
import 'package:petroapp/models/homemodel.dart';
import 'package:petroapp/providers/allprovider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final home = ref.watch(homedataProvider);

    return home.when(
      data: (data) {
        log(data.dtSafetyTips!.length.toString());
        return homedatapage(data, context);
      },
      error: (error, stackTrace) {
        return Center(
          child: Text(error.toString()),
        );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget homedatapage(HomeModel data, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CarouselSlider.builder(
          itemCount: data.dtContent!.length,
          itemBuilder: (BuildContext context, int index, int pageViewIndex) =>
              Container(
            margin: EdgeInsets.all(context.responsiveWidth(10)),
            padding: EdgeInsets.all(context.responsiveWidth(10)),
            // height: 100,
            width: context.maxWidth() * 0.8,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 221, 114, 107),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Text(
                  data.dtContent![index].title ?? "",
                  style: TextStyle(
                      fontSize: context.responsiveWidth(16),
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                SizedBox(
                  height: context.responsiveHeight(10),
                ),
                Text(
                  data.dtContent![index].companyName ?? "",
                  style: TextStyle(
                      fontSize: context.responsiveWidth(16),
                      fontWeight: FontWeight.w500),
                ),
                Flexible(
                  child: Text(
                    data.dtContent![index].description ?? "",
                    style: TextStyle(
                        fontSize: context.responsiveWidth(12),
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Spacer(),
                Text(
                  data.dtContent![index].category ?? "",
                  style: TextStyle(
                      fontSize: context.responsiveWidth(12),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  data.dtContent![index].scheduleFromDate == null
                      ? ""
                      : DateFormat("dd-MM-yyyy")
                          .format(data.dtContent![index].scheduleFromDate!),
                  style: TextStyle(
                      fontSize: context.responsiveWidth(12),
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          options: CarouselOptions(
              height: context.responsiveHeight(300), autoPlay: true),
        ),
        SizedBox(
          height: context.responsiveHeight(20),
        ),
        Padding(
          padding: EdgeInsets.only(left: context.responsiveWidth(20)),
          child: Text(
            "Mothly Stats",
            style: TextStyle(
                fontSize: context.responsiveWidth(20),
                fontWeight: FontWeight.w400,
                color: Colors.black87),
          ),
        ),
        SizedBox(
          height: context.responsiveHeight(20),
        ),
        SizedBox(
          height: context.responsiveWidth(320),
          child: GridView.builder(
            padding: EdgeInsets.only(left: context.responsiveWidth(20)),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: data.dtMonthlyStat!.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 3 / 5),
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(context.responsiveWidth(10)),
                decoration: BoxDecoration(
                    color: const Color(0xFFB5DBFA),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.calendar_month_outlined),
                        SizedBox(
                          width: context.responsiveWidth(4),
                        ),
                        Text(
                          data.dtMonthlyStat![index].statisticMonth!,
                          style: TextStyle(
                              fontSize: context.responsiveWidth(20),
                              fontWeight: FontWeight.w400,
                              color: Colors.black87),
                        ),
                      ],
                    ),
                    Text(
                      data.dtMonthlyStat![index].ltifUnit == null
                          ? "LTIF: 0"
                          : "LTIF:${data.dtMonthlyStat![index].ltifUnit}",
                      style: TextStyle(
                          fontSize: context.responsiveWidth(14),
                          fontWeight: FontWeight.w300,
                          color: Colors.black87),
                    ),
                    Text(
                      data.dtMonthlyStat![index].ltifTarget == null
                          ? "LTIF Traget :0"
                          : "LTIF Traget :${data.dtMonthlyStat![index].ltifTarget}",
                      style: TextStyle(
                          fontSize: context.responsiveWidth(14),
                          fontWeight: FontWeight.w300,
                          color: Colors.black87),
                    ),
                    Text(
                      data.dtMonthlyStat![index].trcf == null
                          ? "TRCF :0"
                          : "TRCF :${data.dtMonthlyStat![index].trcf}",
                      style: TextStyle(
                          fontSize: context.responsiveWidth(14),
                          fontWeight: FontWeight.w300,
                          color: Colors.black87),
                    ),
                    Text(
                      data.dtMonthlyStat![index].trcfTarget == null
                          ? "TRCF Traget :0"
                          : "TRCF Traget:${data.dtMonthlyStat![index].trcfTarget}",
                      style: TextStyle(
                          fontSize: context.responsiveWidth(14),
                          fontWeight: FontWeight.w300,
                          color: Colors.black87),
                    ),
                    Text(
                      data.dtMonthlyStat![index].monthVal == null
                          ? "MonthVal :0"
                          : "MonthVal :${data.dtMonthlyStat![index].monthVal}",
                      style: TextStyle(
                          fontSize: context.responsiveWidth(14),
                          fontWeight: FontWeight.w300,
                          color: Colors.black87),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: context.responsiveHeight(20),
        ),
        Padding(
          padding: EdgeInsets.only(left: context.responsiveWidth(20)),
          child: Text(
            " Performance",
            style: TextStyle(
                fontSize: context.responsiveWidth(20),
                fontWeight: FontWeight.w400,
                color: Colors.black87),
          ),
        ),
        SizedBox(
          height: context.responsiveHeight(20),
        ),
        SizedBox(
          height: context.responsiveWidth(100),
          child: ListView.separated(
            // physics: const NeverScrollableScrollPhysics(),
            padding:
                EdgeInsets.symmetric(horizontal: context.responsiveWidth(20)),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: data.dtPerformance!.length,

            itemBuilder: (context, index) {
              return Container(
                width: context.responsiveWidth(200),
                padding: EdgeInsets.all(context.responsiveWidth(10)),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 80, 170, 243),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: context.responsiveWidth(4),
                        ),
                        Flexible(
                          child: Text(
                            data.dtPerformance![index].itemDescription!,
                            style: TextStyle(
                                fontSize: context.responsiveWidth(15),
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      data.dtPerformance![index].statisticValue == ""
                          ? "statisticValue: 0"
                          : "statisticValue:${data.dtPerformance![index].statisticValue}",
                      style: TextStyle(
                          fontSize: context.responsiveWidth(13),
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                    Text(
                      data.dtPerformance![index].forSplit == null
                          ? "forSplit :0"
                          : "forSplit :${data.dtPerformance![index].forSplit}",
                      style: TextStyle(
                          fontSize: context.responsiveWidth(13),
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: context.responsiveWidth(10),
              );
            },
          ),
        ),
        SizedBox(
          height: context.responsiveHeight(20),
        ),
        SizedBox(
          height: context.responsiveWidth(250),
          child: ListView.separated(
              padding: EdgeInsets.all(context.responsiveWidth(20)),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(context.responsiveWidth(10)),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20)),
                  height: context.responsiveHeight(150),
                  width: context.maxWidth() * 0.9,
                  child: Column(
                    children: [
                      Text(
                        data.dtSafetyTips![index].title ?? "",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: context.responsiveWidth(16)),
                      ),
                      SizedBox(
                        height: context.responsiveHeight(10),
                      ),
                      Flexible(
                          child: Text(
                        data.dtSafetyTips![index].description ?? "",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: context.responsiveWidth(14)),
                      ))
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: context.responsiveWidth(5),
                );
              },
              itemCount: data.dtSafetyTips!.length),
        )
      ],
    );
  }
}
