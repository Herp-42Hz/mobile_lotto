import 'package:flutter/material.dart';

class Wallet_Page extends StatefulWidget {
  const Wallet_Page({super.key});

  @override
  State<Wallet_Page> createState() => _Wallet_PageState();
}

class _Wallet_PageState extends State<Wallet_Page> {
  double balance = 9999.99; // ตัวอย่างเครดิตที่มี

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF006064), Color(0xFF00838F), Color(0xFF006064)],
            stops: [0.0, 0.5, 1.0],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),

              // 🔹 โลโก้ด้านบน
              Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: -5,
                      top: 5,
                      child: Image.asset(
                        'assets/lotto-1-removebg-preview 1.png',
                        height: 100,
                      ),
                    ),
                    Image.asset('assets/lotto888.png', height: 120),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // 🔹 กล่องเครดิต
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.teal.shade700.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.white70, width: 2),
                ),
                child: Column(
                  children: [
                    const Text(
                      "เครดิตที่ใช้ได้",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      balance.toStringAsFixed(2),
                      style: const TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // 🔹 ปุ่ม เติมเงิน / ถอนเงิน
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding:
                          const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    onPressed: () {
                      // TODO: ไปหน้าเติมเงิน
                    },
                    child: const Text(
                      "เติมเงิน",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding:
                          const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    onPressed: () {
                      // TODO: ไปหน้าถอนเงิน
                    },
                    child: const Text(
                      "ถอนเงิน",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),

              // 🔹 ปุ่มเมนูเพิ่มเติม
              buildMenuButton(Icons.receipt_long, "ประวัติการซื้อ"),
              const SizedBox(height: 15),
              buildMenuButton(Icons.emoji_events, "ประวัติการถูกรางวัล"),
            ],
          ),
        ),
      ),

      // 🔹 แถบเมนูล่าง
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF085056),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        currentIndex: 2, // หน้า Wallet = index 2
        onTap: (index) {
          // TODO: เขียน Navigation ไปหน้าต่าง ๆ
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "หน้าแรก"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: "หวยของฉัน"),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "กระเป๋าเงิน"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "สมาชิก"),
        ],
      ),
    );
  }

  // 🔹 ฟังก์ชันสร้างปุ่มเมนู
  Widget buildMenuButton(IconData icon, String text) {
    return InkWell(
      onTap: () {
        // TODO: ไปหน้าที่เกี่ยวข้อง
      },


      
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.teal.shade900, size: 28),
            const SizedBox(width: 15),
            Text(
              text,
              style: TextStyle(
                color: Colors.teal.shade900,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
