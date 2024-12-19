import 'package:flutter/material.dart';
import 'package:untitled/core/constants/color.dart';
import 'widget/orders_sign.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: AppColors.mainColor,
        appBar: AppBar(
          backgroundColor: AppColors.mainColor,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: Container(
              height: 50,
              padding: const EdgeInsets.all(5),
              color: Color(0xff1D182A),
              child: TabBar(
                tabAlignment: TabAlignment.start,
                dividerColor: Colors.transparent,
                isScrollable: true,
                indicator: BoxDecoration(
                  color: AppColors.buttonColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                labelColor: AppColors.whiteColor,
                unselectedLabelColor: AppColors.greyColor,
                labelStyle:
                const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                tabs: const [
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text("Processing"),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text("Shipped"),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text("Delivered"),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text("Returned"),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text("Canceled"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    OrderWidget(),
                    OrderWidget(),
                    OrderWidget(),
                    OrderWidget(),
                    OrderWidget(),
                    OrderWidget(),
                    OrderWidget(),
                    OrderWidget(),
                    OrderWidget(),
                    OrderWidget(),
                    OrderWidget(),
                    OrderWidget(),
                    OrderWidget(),
                    OrderWidget(),

                  ],
                )
            ),

            // Second Tab: Delivered Content
            const Center(
              child: Text(
                "Delivered",
                style: TextStyle(
                  color: AppColors.whiteColor,
                ),
              ),
            ),

            // Third Tab: Returned Content
            const Center(
              child: Text(
                "Returned",
                style: TextStyle(
                  color: AppColors.whiteColor,
                ),
              ),
            ),
            // Fourth Tab: Canceled Content
            const Center(
              child: Text(
                "Canceled",
                style: TextStyle(
                  color: AppColors.whiteColor,
                ),
              ),
            ),
            const Center(
              child: Text(
                "Canceled",
                style: TextStyle(
                  color: AppColors.whiteColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}