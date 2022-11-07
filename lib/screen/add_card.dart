import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping_app/color.dart';
import 'package:shoping_app/screen/customtext.dart';
import 'package:shoping_app/screen/provider/%20providerdata.dart';

import 'modelclass.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    final itemInfo = ItemData.itemList();
    final dataChang = Provider.of<DtataChange>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: Container(
                  height: 40,
                  width: 40,
                  // padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: iconBackground),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 12,
                    ),
                  )),
              centerTitle: true,
              title: Text(
                'Order Details',
                style: TextStyle(color: black, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            HeadingText(
              'My Cart',
            ),
            SizedBox(
              height: 24,
            ),
            Card(
              color: Colors.transparent,
              elevation: 0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: iconBackground,
                    ),
                    child: Image(
                      image: NetworkImage(
                          'https://pngimg.com/uploads/headphones/headphones_PNG7645.png'),
                      fit: BoxFit.cover,
                      height: 80,
                      width: 80,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HeadingText(
                          'AKG N700NCM2 Wireless Headohone',
                          fs: 14,
                          fw: FontWeight.w700,
                        ),
                        SizedBox(height: 8),
                        HeadingText(
                          dataChang.x == 0
                              ? '\$ 199.00 (-\$4.00 Tax)'
                              : '\$ ${dataChang.x * dataChang.total}.00 (-\$4.00 Tax)',
                          fs: 12,
                          clr: Colors.black.withOpacity(.4),
                        ),
                        SizedBox(
                          height: 14,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: FloatingActionButton(
                                    backgroundColor: iconBackground,
                                    onPressed: () {
                                      dataChang.decriment();
                                    },
                                    child: Icon(
                                      Icons.remove,
                                      color: black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  child: HeadingText(dataChang.x.toString()),
                                ),
                                SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: FloatingActionButton(
                                    backgroundColor: iconBackground,
                                    onPressed: () {
                                      dataChang.incriment();
                                    },
                                    child: Icon(
                                      Icons.add,
                                      color: black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                dataChang.delete();
                              },
                              child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      // borderRadius: BorderRadius.circular(8),
                                      color: iconBackground),
                                  child: Center(
                                      child:
                                          Icon(Icons.delete_outline_rounded))),
                            )
                          ],
                        ),
                        // Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: HeadingText('Delivery Location'),
            ),
            ListTile(
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
              title: HeadingText(
                '2 Petra Meliki ',
                fs: 14,
              ),
              subtitle: HeadingText(
                '016, Tibilisi',
                fs: 12,
                clr: Colors.black.withOpacity(.4),
              ),
              leading: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: iconBackground,
                ),
                child: Icon(
                  Icons.location_pin,
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: HeadingText('Payment Method'),
            ),
            ListTile(
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
              title: HeadingText(
                'VISA Class',
                fs: 14,
              ),
              subtitle: HeadingText(
                '***_01722',
                fs: 12,
                clr: Colors.black.withOpacity(.4),
              ),
              leading: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: iconBackground,
                ),
                child: Icon(
                  Icons.card_giftcard_rounded,
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: HeadingText('Order Info'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeadingText(
                  'Subtotal',
                  fs: 14,
                  clr: Colors.black.withOpacity(.4),
                ),
                HeadingText(
                  '\$${dataChang.x * dataChang.total}.00',
                  fs: 14,
                  clr: Colors.black.withOpacity(.4),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeadingText(
                  'Shipping Cost',
                  fs: 14,
                  clr: Colors.black.withOpacity(.4),
                ),
                HeadingText(
                  '+\$ 10.00',
                  fs: 14,
                  clr: Colors.black.withOpacity(.4),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeadingText(
                  'Total',
                  fs: 14,
                  clr: Colors.black.withOpacity(.4),
                ),
                HeadingText(
                  dataChang.x == 0
                      ? '\$0.00'
                      : '\$${dataChang.x * dataChang.total + 10.toDouble()}0',
                  fs: 16,
                  fw: FontWeight.w800,
                  clr: Colors.black,
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => dataChang.x == 0
                        ? AlertDialog(
                            content: HeadingText('Please Select an product'),
                          )
                        : AlertDialog(
                            content: HeadingText(
                                '\$${dataChang.x * dataChang.total + 10.toDouble()}0'),
                          ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.blue,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16),
                  width: double.infinity,
                  child: Center(
                      child: HeadingText(
                    dataChang.x == 0
                        ? 'CHECKOUT'
                        : 'CHECKOUT \$${dataChang.x * dataChang.total + 10.toDouble()}0',
                    clr: iconBackground,
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
