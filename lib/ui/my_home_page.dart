import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_example/service/coffee_service.dart';

import '../model/coffee.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int? hoveringItem;
  List<Coffee> listCoffee = [];
  final CoffeeService _coffeeService = CoffeeService(Dio());
  
  @override
  void initState() {
    super.initState();
  }
  
  @override
  void didChangeDependencies() async {
    await getListCoffee();
    super.didChangeDependencies();
  }

  getListCoffee() async {
    try {
      listCoffee = await _coffeeService.getListCoffee(
          type: _type == CoffeeType.hot?'hot':'iced'
      );
      setState(() {

      });
    } catch (e){
      log(e.toString());
    }
  }

  CoffeeType _type = CoffeeType.hot;

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints){
          return Column(
            children: [
              Container(
                height: 80,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 15.0,
                        offset: Offset(0.0, 0.75)
                    )
                  ],
                ),
                child: Row(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.05,
                      child: Image.network(
                          "data:image/png;base64,iVB"
                              "ORw0KGgoAAAANSUhEUgAAAXsAAACFCAMAAACND6jkAAA"
                              "BoVBMVEX///8XR50AOpgAPJnhsCcTRZwEQJrhrye7xt5th73hsif7/f/jly"
                              "YbSZ5jf7nhrSfipSfiqieerdAAN5fu8fiVp84pVKTkiCbklCbkgybioSfleyblfybkhib"
                              "ioyfjnifkjibldCYAM5bmaSbnXSXmZiboWCXnWiXoUCXpSCXjmibpQSXrJSTqNCTrIiT98OzoMQD9+"
                              "u/rAADgqQD2yLTumHfm6/TsWEH75uTW3eyquNfz4LUAL5XinwDswHb77uLvqoQ0W6fb4e5BZayAlcP13MLvxZ"
                              "buNjz32cqZqs9Oba7K0+b47tbx2qPmrkPnvVX01bTmnUFqhLznRQDjeADuaV/37M/hlQD047v71NTry3ju0o7polPs"
                              "sXj3trNad7UAJZHzjIvtVU3vdGr829zzp53vkX7sflvqcETjuD3mUgbneTzlYwvqlF3vs4vxwaDxoozlXgDzm"
                              "ZPjbgDpjU3wfHLpumLsrm70vqjtbFnrd0XukG7sp2rwu5Lrik7xnYXwX2HuP0XuvoDrYT/qs2HuoHTtJy7tZVPqlkXzf"
                              "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"),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: const TextField(
                        decoration: InputDecoration(
                            hintText: 'Type here to search...',
                            suffixIcon: Icon(Icons.search_rounded),
                            contentPadding: EdgeInsets.only(top: 5, left: 10),
                            border: OutlineInputBorder(

                            )
                        ),
                      ),),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: const Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: const Text('Hot coffee'),
                leading: Radio(
                  value: CoffeeType.hot,
                  groupValue: _type,
                  onChanged: (CoffeeType? value) async {
                    setState(() {
                      _type = value!;
                    });
                    await getListCoffee();
                  },
                ),
              ),
              ListTile(
                title: const Text('Iced coffee'),
                leading: Radio(
                  value: CoffeeType.iced,
                  groupValue: _type,
                  onChanged: (CoffeeType? value) async {
                    setState(() {
                      _type = value!;
                    });
                    await getListCoffee();
                  },
                ),
              ),
              Expanded(
                  child: GridView.builder(
                    itemCount: listCoffee.length,
                    padding: EdgeInsets.only(
                        top: 20,
                        right: constraints.maxWidth > 1200 ? 200:20,
                        left: constraints.maxWidth > 1200 ? 200:20
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: constraints.maxWidth > 1200 ? 4 :
                        constraints.maxWidth <= 1200 && constraints.maxWidth >= 800 ? 3 :2,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 10,
                        childAspectRatio: 0.9
                    ),
                    itemBuilder: (BuildContext context, int index){
                      return InkWell(
                        onHover: (isHovering) {
                          if (isHovering) {
                            setState(() {
                              hoveringItem = index;
                            });
                          } else {
                            setState(() {
                              hoveringItem = null;
                            });
                          }
                        },
                        onTap: (){},
                        child: Ink(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: index == hoveringItem?10:0,
                                  offset: const Offset(0.0, 0.5)
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)
                                ),
                                child: AspectRatio(
                                  aspectRatio: 4/3,
                                  child: Image.network(
                                    listCoffee[index].image ?? '',
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                child: FittedBox(
                                  child: Text(
                                    listCoffee[index].title ?? '',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: constraints.maxWidth < 800 ? 12: 20
                                    ),
                                  ),
                                )
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10, right: 10, bottom: 8),
                                  child: RichText(
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Description: ',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                              fontSize: constraints.maxWidth < 800 ? 9: 13
                                          ),
                                        ),
                                        TextSpan(
                                          text: listCoffee[index].description ?? '',
                                          style: TextStyle(color: Colors.black,
                                              fontSize: constraints.maxWidth < 800 ? 9: 13
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  )
              )
            ],
          );
        },
      )
    );
  }
}

enum CoffeeType { hot, iced }
