import 'package:flutter/material.dart';
import '/src/presentation/widgets/socialportalwidgets/ecoProjectWidget.dart';
import '/src/presentation/widgets/homepage/sendFuelWidget.dart';

class Socialportal extends StatelessWidget {
  const Socialportal({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true, // orqaga qaytishni ruxsat beramiz
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Social Portal',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white, size: 30),
            onPressed: () {
              Navigator.pop(context); // ortga qaytish
            },
          ),
          backgroundColor: const Color(0xFF295F87),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Yuqori rasm qismi
              Container(
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/image39.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '25 Green Fuelz',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text(
                          'Get more',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Pastki qism
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '3 new projects',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Supported with the help of the community',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/elefens.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ],
                ),
              ),

              // Current projects sarlavhasi
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Current projects',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),

              // EcoProjectWidget'lar
              SendFuelWidget(
                title: 'Send Fuel',
                subtitle: 'Support our projects with Green Fuelz',
                color: const Color(0xFF295F87),
                imagePath: 'assets/images/fuel.png',
              ),
              EcoProjectWidget(
                imagePath: 'assets/images/forest.jpg',
                ecoName: 'Plant 100K trees',
                text:
                    'Join our green initiative to plant trees and combat climate change.',
                fundsCollected: '200',
                unit: 'Fuelz liters',
              ),

              // Qo'shimcha loyiha xohlasangiz
              // const EcoProjectWidget(
              //   imagePath: 'assets/images/forest.jpg',
              //   ecoName: 'Plant 100K trees',
              //   text: 'Join our green initiative...',
              //   fundsCollected: '200',
              //   unit: 'Fuelz liters',
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
