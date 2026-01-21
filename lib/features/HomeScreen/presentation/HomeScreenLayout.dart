import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/navcontroller.dart';
import '../../profileScreen/presentation/ProfileLayout.dart';


class Homescreenlayout extends StatelessWidget {
  Homescreenlayout({super.key});

  final NavController nav = Get.put(NavController());

  final List<Widget> pages = [
    const _HomeTab(),
    const _CartTab(),
    Profilelayout(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Wasaly"),
        centerTitle: true,
      ),

      body: Obx(() => pages[nav.currentIndex.value]),

      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
          currentIndex: nav.currentIndex.value,
          onTap: nav.changeTab,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}

class _HomeTab extends StatelessWidget {
  const _HomeTab();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Home Tab 🏠" , style: TextStyle(fontSize: 20)),
    );
  }
}


class _CartTab extends StatelessWidget {
  const _CartTab();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Cart Tab 🛒" , style: TextStyle(fontSize: 20)),
    );
  }
}
class _ProfileTab extends StatelessWidget {
  const _ProfileTab();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Profile Tab 👤" , style: TextStyle(fontSize: 20)),
    );
  }
}
