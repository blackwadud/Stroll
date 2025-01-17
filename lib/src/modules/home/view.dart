import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stroll/src/config/constants/asset.dart';

class Home extends StatefulWidget {
  static const routeName = "home";

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String selectedOption = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.background),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(1.0),
                  Colors.black.withOpacity(0.4),
                  Colors.transparent,
                ],
                stops: const [0.3, 0.5, 1.0],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "Stroll Bonfire",
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffCCC8FF),
                        ),
                      ),
                      SvgPicture.asset(AppAssets.arrow)
                    ],
                  ),
                  SvgPicture.asset(AppAssets.details),
                  const SizedBox(height: 80,),
                  const Spacer(),
                  const Row(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Image(image: AssetImage(AppAssets.tag,))),
                      Flexible(
                        child: Text(
                          "What is your favorite time of the day?",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "“Mine is definitely the peace in the morning.”",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 2.5,
                      children: [
                        _buildOptionButton(
                            "A", "The peace in the early mornings"),
                        _buildOptionButton("B", "The magical golden hours"),
                        _buildOptionButton("C", "Wind-down time after dinners"),
                        _buildOptionButton("D", "The serenity past midnight"),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pick your option.",
                            style: TextStyle(
                                color: Color(0xffE5E5E5), fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "See who has a similar mind.",
                            style: TextStyle(
                                color: Color(0xffE5E5E5), fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      const Spacer(),
                      SvgPicture.asset(AppAssets.poll),
                      const SizedBox(
                        width: 10,
                      ),
                      SvgPicture.asset(AppAssets.next),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOptionButton(String label, String text) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedOption = label;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff232A2E),
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: selectedOption == label ? Colors.blue : Colors.transparent,
            width: 2.0,
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 7),
              decoration: BoxDecoration(
                color: selectedOption == label ? Colors.blue : Colors.transparent,
                border: Border.all(
                  color:  selectedOption == label ? Colors.blue : Colors.white,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Text(
                label,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Flexible(
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 11,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
