import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stripe Checkout Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        ),
      ),
      home: const CheckoutPage(),
    );
  }
}

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(32.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Left Column
                // Expanded(
                //   flex: 1,
                //   child: Padding(
                //     padding: const EdgeInsets.only(right: 64.0),
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Row(
                //           children: [
                //             const Icon(Icons.arrow_back, size: 16, color: Colors.grey),
                //             const SizedBox(width: 8),
                //             const Icon(Icons.shopping_basket, size: 20, color: Colors.grey),
                //             const SizedBox(width: 8),
                //             const Text(
                //               'Flutter Stripe Testing',
                //               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                //             ),
                //             const SizedBox(width: 8),
                //             Container(
                //               padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                //               decoration: BoxDecoration(
                //                 color: Colors.orange.shade100,
                //                 borderRadius: BorderRadius.circular(4),
                //               ),
                //               child: const Text(
                //                 'TEST MODE',
                //                 style: TextStyle(
                //                   fontSize: 10,
                //                   color: Colors.orange,
                //                   fontWeight: FontWeight.bold,
                //                 ),
                //               ),
                //             ),
                //           ],
                //         ),
                //         const SizedBox(height: 32),
                //         const Text(
                //           'Stubborn Attachments',
                //           style: TextStyle(color: Colors.grey, fontSize: 18),
                //         ),
                //         const Text(
                //           'US\$20.00',
                //           style: TextStyle(
                //             fontSize: 36,
                //             fontWeight: FontWeight.bold,
                //           ),
                //         ),
                //         const SizedBox(height: 32),
                //         ClipRRect(
                //           borderRadius: BorderRadius.circular(8),
                //           child: Container(
                //             height: 400,
                //             width: 300,
                //             color: Colors.grey.shade200,
                //             child: Image.network(
                //               'https://m.media-amazon.com/images/I/71Yv8y6hL1L._AC_UF1000,1000_QL80_.jpg',
                //               fit: BoxFit.cover,
                //               errorBuilder: (context, error, stackTrace) =>
                //                   const Icon(Icons.book, size: 100, color: Colors.grey),
                //             ),
                //           ),
                //         ),
                //         const SizedBox(height: 48),
                //         Row(
                //           children: [
                //             const Text('Powered by ', style: TextStyle(color: Colors.grey, fontSize: 12)),
                //             Text('stripe', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey.shade700, fontSize: 14)),
                //             const SizedBox(width: 24),
                //             const Text('Terms  Privacy', style: TextStyle(color: Colors.grey, fontSize: 12)),
                //           ],
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // Right Column
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: const Text(
                          'مبروووك ',
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: const Text(
                          'كوبون قسيمة شرائية ',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                        ),
                      ),
                      const SizedBox(height: 24),
                      // _buildLabel('Email'),
                      // const TextField(
                      //   decoration: InputDecoration(
                      //     hintText: '',
                      //   ),
                      // ),
                      const SizedBox(height: 20),
                      _buildLabel('Card information'),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                hintText: '1234 1234 1234 1234',
                                border: InputBorder.none,
                                suffixIcon: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.credit_card, color: Colors.blue.shade900),
                                    const SizedBox(width: 4),
                                    const Icon(Icons.credit_card, color: Colors.orange),
                                    const SizedBox(width: 4),
                                    const Icon(Icons.credit_card, color: Colors.blue),
                                    const SizedBox(width: 8),
                                  ],
                                ),
                              ),
                            ),
                            const Divider(height: 1, thickness: 1),
                            Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'MM / YY',
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                Container(width: 1, height: 48, color: Colors.grey.shade300),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'CVC',
                                      border: InputBorder.none,
                                      suffixIcon: Icon(Icons.credit_card, color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      _buildLabel('Name on card'),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: '',
                        ),
                      ),
                      // const SizedBox(height: 20),
                      // _buildLabel('Country or region'),
                      // DropdownButtonFormField<String>(
                      //   value: 'Spain',
                      //   items: ['Spain', 'United States', 'United Kingdom']
                      //       .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      //       .toList(),
                      //   onChanged: (val) {},
                      //   decoration: const InputDecoration(),
                      // ),
                      const SizedBox(height: 32),
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF0061E0),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          child: const Text(
                            'Pay  100.00 JD',
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
      ),
    );
  }
}
