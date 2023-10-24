import 'package:flutter/material.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.blueGrey,
          title: const Text(
            "Currency Converter",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                result.toString(),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                  controller: textEditingController,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.brown.shade200,
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 3),
                        borderRadius: BorderRadius.circular(40)),
                    hintText: "Enter your amount in USD",
                    prefixIcon: const Icon(Icons.monetization_on_outlined,
                        color: Colors.black54),
                    hintStyle: const TextStyle(color: Colors.black54),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextButton(
                  onPressed: () {
                    result = double.parse(textEditingController.text) * 81;
                    setState(() {});
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.black54,
                      foregroundColor: Colors.white,
                      fixedSize: const Size(200, 50),
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  // style: ButtonStyle(
                  //     elevation: const MaterialStatePropertyAll(40),
                  //     backgroundColor:
                  //         MaterialStateProperty.all(Colors.black54),
                  //     foregroundColor: MaterialStateProperty.all(Colors.white),
                  //     fixedSize: MaterialStateProperty.all(const Size(200, 50)),
                  //     minimumSize: MaterialStateProperty.all(
                  //         const Size(double.infinity, 50)),
                  //     shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(15)))
                  //         ),
                  child: const Text("Convert"),
                ),
              ),
            ],
          ),
        ));
  }
}
