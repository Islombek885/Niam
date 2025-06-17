import 'package:flutter/material.dart';
import '/src/presentation/widgets/homepage/fasterbuttons.dart';
import '/src/presentation/widgets/homepage/customBannerWidget.dart';
import '/src/presentation/widgets/homepage/stationWidget.dart';
import '/src/presentation/widgets/homepage/sendFuelWidget.dart';
import '/src/presentation/widgets/homepage/fuelBalanceWidget.dart';
import '/src/presentation/widgets/homepage/purchaseHistoryWidget.dart';
import '/src/presentation/pages/socialPortal.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 252, 251, 251),
        title: Text(
          'Hello Roman',
          style: TextStyle(fontSize: 19, color: Colors.white),
        ),
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey[200],
          child: ClipOval(
            child: Image.asset(
              'assets/images/avatar.png',
              fit: BoxFit.cover,
              width: 60,
              height: 60,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Socialportal()),
              );
            },
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
              weight: 40,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // Yuqori qism (ko'k fonda)
            Container(
              color: Colors.lightBlueAccent,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/frame.png',
                            width: 35, height: 35),
                        SizedBox(width: 8),
                        Text(
                          '172 Wandurmmulla',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        SizedBox(width: 12),
                      ],
                    ),
                  ),
                  Text(
                    'FuelBack Personal',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '25.00 La',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(
                        child: CircleIconWithLabel(
                          iconPath: 'assets/icons/fuelUp.png',
                          label: 'Fuel Up',
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: CircleIconWithLabel(
                          iconPath: 'assets/icons/hend.png',
                          label: 'Transfer',
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: CircleIconWithLabel(
                          iconPath: 'assets/icons/hend.png',
                          label: 'Pay Bill',
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: CircleIconWithLabel(
                          iconPath: 'assets/icons/Chart2.png',
                          label: 'Acccounts',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // O'tish effekti uchun gradient
            Container(
              height: 20, // O'tish balandligi
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.lightBlueAccent,
                    Colors.white,
                  ],
                  stops: [0.0, 1.0], // Asta-sekin o'tish
                ),
              ),
            ),
            // Pastki qism (oq fonda)
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  CustomBannerWidget(
                    title: 'FuelBack Personal',
                    imagePath: 'assets/images/coin.png',
                    subtitle1: '25.00 La',
                    onDelete: () {
                      print("Banner o'chirildi!");
                    },
                  ),
                  CustomBannerWidget(
                    title: 'FuelBack Personal',
                    imagePath: 'assets/images/gift.png',
                    subtitle1: '25.00 La',
                    subtitle2: 'Share invite',
                    onDelete: () {
                      print("Banner o'chirildi!");
                    },
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Recommended for You ',
                        style: TextStyle(fontSize: 22, color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 280,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      children: [
                        StationWidget(
                          imagePath: 'assets/images/recommended1.png',
                          title: 'Station 1',
                          subtitle: 'Open 24/7',
                          isOpened: 'Open',
                        ),
                        SizedBox(width: 16),
                        StationWidget(
                          imagePath: 'assets/images/recommended1.png',
                          title: 'Station 2',
                          subtitle: 'Open 24/7',
                          isOpened: 'Open',
                        ),
                        SizedBox(width: 16),
                        StationWidget(
                          imagePath: 'assets/images/recommended1.png',
                          title: 'Station 3',
                          subtitle: 'Open 24/7',
                          isOpened: 'Open',
                        ),
                        SizedBox(
                          width: 16,
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SendFuelWidget(
                          title: 'Send Fuelz',
                          subtitle: 'LKR 287.00 to share',
                          color: const Color.fromARGB(246, 83, 132, 247),
                          imagePath: 'assets/icons/Chart.png',
                        ),
                        SendFuelWidget(
                          title: 'Social Portal',
                          subtitle: 'Portal',
                          color: const Color.fromARGB(248, 107, 248, 126),
                          imagePath: 'assets/images/logo1.png',
                        ),
                      ],
                    ),
                  ),
                  FuelBalanceWidget(
                    title: 'My Fuelz Balance',
                    pending: '0.00',
                    totalAvailable: '0.00',
                    usable: '0.00',
                    convertButtonText: 'Convert Fuelz',
                  ),
                  PurchaseHistoryWidget(
                    title: 'Purchase History',
                    icon: 'assets/icons/Chart2.png',
                    subtitle: 'Athurugiriya Lanka IOC',
                    subtitle2: '27-Apr, 03:47',
                    actions: 'LKR 1,000.00',
                  ),
                  PurchaseHistoryWidget(
                    title: 'Purchase History',
                    icon: 'assets/icons/Chart2.png',
                    subtitle: 'Athurugiriya Lanka IOC',
                    subtitle2: '27-Apr, 03:47',
                    actions: 'LKR 1,000.00',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SendFuelWidget(
                          title: 'Send Fuelz',
                          subtitle: 'LKR 287.00 to share',
                          color: const Color.fromARGB(251, 230, 239, 247),
                          imagePath: 'assets/icons/Chart.png',
                        ),
                        SendFuelWidget(
                          title: 'Social Portal',
                          subtitle: 'Portal',
                          color: const Color.fromARGB(242, 246, 247, 249),
                          imagePath: 'assets/images/logo1.png',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
