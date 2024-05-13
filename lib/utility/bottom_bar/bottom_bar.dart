import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_code_stt_scanner/feature/abc_page/abc_page.dart';
import 'package:qr_code_stt_scanner/feature/history_page/history_page.dart';
import 'package:qr_code_stt_scanner/feature/scanning_page/homepage.dart';
import 'package:qr_code_stt_scanner/feature/settings_page/settings_page.dart';
import 'package:qr_code_stt_scanner/utility/bottom_bar/cubit/bottombar_cubit.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  late final BottombarCubit viewModel;
  late final PageController controller;

  @override
  void initState() {
    viewModel = BottombarCubit();
    controller = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => viewModel,
      child: Scaffold(
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          elevation: 12,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.image,
              color: Colors.white,
            ),
          ),
          title: const Text(
            'Scan',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.flash_on,
                color: Colors.white,
              ),
            ),
          ],
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        bottomNavigationBar: BlocConsumer<BottombarCubit, BottombarState>(
          listener: (context, state) {},
          builder: (context, state) {
            return BottomNavigationBar(
              currentIndex: state.selectedIndex,
              onTap: (value) => viewModel.selectedIndex,
              // enableFeedback: true,
              // showSelectedLabels: true,
              // showUnselectedLabels: false,
              elevation: 12,
              unselectedItemColor: Colors.black,
              selectedItemColor: Colors.red,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.qr_code_scanner),
                  label: 'scanner',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.abc),
                  label: 'abc',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.history),
                  label: 'gecmis',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'ayarlar',
                ),
              ],
            );
          },
        ),
        body: BlocConsumer<BottombarCubit, BottombarState>(
          listener: (context, state) {},
          builder: (context, state) {
            return PageView(
              onPageChanged: (value) {
                viewModel.selectedIndex(value);
                controller.jumpToPage(value);
              },
              controller: controller,
              children: const [
                ScanningPage(),
                AbcPage(),
                HistoryPage(),
                SettingsPage(),
              ],
            );
          },
        ),
      ),
    );
  }
}
