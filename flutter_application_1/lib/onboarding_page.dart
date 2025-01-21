import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2C2B34),
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/onboarding.png'),
                fit: BoxFit.cover 
              )
            ),
          )),
          Expanded(
            child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Premimum cars \n for rent",
                  style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                  ),
            SizedBox(height: 10,),
            Text(
              "Premium and prestige car daily rental. \n Experience the thrill at a lower price",
              style: TextStyle(color: Colors.grey, fontSize: 16)
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 320,
                height: 54,
                child: ElevatedButton(
                onPressed: ()=>{},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
                child: Text(
                "Get Started",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )
              ))
              ],
            )
          ))
        ],
      ),
    );
  }
}