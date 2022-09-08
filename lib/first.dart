import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:performance/Model/bank_model.dart';
import 'package:performance/Model/data_model.dart';
import 'package:performance/RemoteService.dart';
import 'package:performance/constants/colors.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<double>? percent;
  BankModel? detail;
  List<DataModel>? list;

  @override
  initState() {
    loaddata();
    super.initState();
  }

  void loaddata() async {
    list = await RemoteServie.getdatadetail();
    detail = await RemoteServie.getbankdetail();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double totalWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: (detail != null)
          ? SingleChildScrollView(
              child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 7, 0, 7),
                      child: Text('Overview',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.kPrimaryColor)),
                    ),
                    const Divider(),
                    SizedBox(height: 7),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sector',
                            style: TextStyle(
                              fontSize: 15,
                              color: AppColors.kPrimaryLight,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.account_balance),
                              SizedBox(width: 2),
                              Text(detail!.sector!),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Industry',
                            style: TextStyle(
                              fontSize: 15,
                              color: AppColors.kPrimaryLight,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.account_balance),
                              SizedBox(width: 2),
                              Text(detail!.industry!),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Market Cap.',
                            style: TextStyle(
                              fontSize: 15,
                              color: AppColors.kPrimaryLight,
                            ),
                          ),
                          Text(detail!.mcap!.toString()),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Enterprise Value (EV)',
                            style: TextStyle(
                              fontSize: 15,
                              color: AppColors.kPrimaryLight,
                            ),
                          ),
                          (detail!.ev != null) ? Text(detail!.ev!) : Text('-')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Book Value/ Share',
                            style: TextStyle(
                              fontSize: 15,
                              color: AppColors.kPrimaryLight,
                            ),
                          ),
                          Text(detail!.bookNavPerShare!.toStringAsFixed(2)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Price-Earning Ratio (PE)',
                            style: TextStyle(
                              fontSize: 15,
                              color: AppColors.kPrimaryLight,
                            ),
                          ),
                          Text(detail!.ttmpe!.toStringAsFixed(2)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'PEG Ratio',
                            style: TextStyle(
                              fontSize: 15,
                              color: AppColors.kPrimaryLight,
                            ),
                          ),
                          Text(detail!.pegRatio!.toStringAsFixed(2)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Divided Yield',
                            style: TextStyle(
                              fontSize: 15,
                              color: AppColors.kPrimaryLight,
                            ),
                          ),
                          Text(detail!.bankModelYield!.toStringAsFixed(2)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'View More',
                                style: TextStyle(color: AppColors.orange),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 7, 0, 7),
                      child: Text('Performance',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.kPrimaryColor)),
                    ),
                    const Divider(),
                    SizedBox(height: 7),
                    for (var data in list!)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 7, 0, 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(data.label!,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        )),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    color: AppColors.kSecondaryColor,
                                    width: 200,
                                    height: 20,
                                  ),
                                  Container(
                                    color: (data.changePercent!.isNegative)
                                        ? Colors.red
                                        : Colors.green,
                                    width: (data.changePercent!.abs() < 200)
                                        ? data.changePercent!.abs()
                                        : 200,
                                    // here you can define your percentage of progress, 0.2 = 20%, 0.3 = 30 % .....
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          (data.changePercent!.isNegative)?
                          SizedBox(
                            height: 15,
                            width: 15,
                            child: Image.asset(
                              'assets/image/img_1.png',
                              fit: BoxFit.fill,
                            ),
                          )
                          : SizedBox(
                            height: 15,
                            width: 15,
                            child: Image.asset(
                              'assets/image/img.png',
                              fit: BoxFit.fill,
                            ),
                          ),

                          (data.changePercent!.isNegative)?
                              Text(data.changePercent!.toStringAsFixed(2),style: TextStyle(color: Colors.red),):Text(data.changePercent!.toStringAsFixed(2),style: TextStyle(color: Colors.green),)


                        ],
                      ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'View More',
                                style: TextStyle(color: AppColors.orange),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ))
          : Center(child: CircularProgressIndicator()),
    ));
  }
}
