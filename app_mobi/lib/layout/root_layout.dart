

import 'package:app_mobi/utils/constants.dart';
import 'package:flutter/material.dart';

class RootLayout extends StatefulWidget {
  const RootLayout({super.key});

  @override
  State<RootLayout> createState() => _RootLayoutState();
}

class _RootLayoutState extends State<RootLayout> {
  PageController pageController = PageController();
  int currentPage = 0;

  @override
  void dispose(){
    super.dispose();
    pageController.dispose();
  }

  changePage(int page){
    pageController.jumpToPage(page);
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: PageView(
          controller: pageController,
          children: screen,
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.grey[400]!,
                width: 1,
              ),
            ),
          ),
          child: TabBar(
            indicator: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.red,
                  width: 4,
                ),
              ),
            ),
            onTap: changePage,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(
                child: Icon(
                  Icons.home_outlined,
                  color: currentPage == 0 ? Colors.red : Colors.black,
                ),
              ),
              Tab(
                child: Icon(
                  Icons.local_gas_station_outlined,
                  color: currentPage == 1 ? Colors.red : Colors.black,
                ),
              ),
              Tab(
                child: Icon(
                  Icons.account_circle_outlined,
                  color: currentPage == 2 ? Colors.red : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}