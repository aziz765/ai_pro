import 'package:ai_project/back.dart';
import 'package:ai_project/screens/trans.dart';
import 'package:ai_project/title2.dart';
import 'package:flutter/material.dart';

class hh extends StatelessWidget {
  const hh({super.key});
  

  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    return  Scaffold(
     //backgroundColor: Color.fromARGB(164, 0, 200, 255),
        body: Column(
      children: [
        //Flexible(child: Container(child: const Bachgroundimage(),)),
       const Bachgroundimage(),
         const SizedBox( 
           height: 17,),
      Expanded(
        child: Stack(
          clipBehavior: Clip.none,
          children: [Container(
            height: size.height,
          width: size.width,
          padding: const EdgeInsets.all(20),
          

          
          decoration: const BoxDecoration(color:Color.fromARGB(255, 141, 159, 177),
          borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: size.height * 0.15 * 0.7,),
              const cardescrption(),
              ElevatedButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const TranslatorApp())),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(size.width, size.height * 0.08),
                backgroundColor: Color.fromARGB(255, 0, 132, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
               child: Text("Get Started",style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.black
               ),),
               ),
                
              
            ],
          ),
        ),
        Positioned(
          top: -size.height * 0.5 *0.7,
          left: -size.height * 0.5 *0.55,
          child: SizedBox(
          height: size.height * 0.5,
          child: Image.asset("assets/images/backkkkk-removebg-preview.png",fit: BoxFit.fitHeight,),))
        
        
         
        
        ],),
      )

      ],
    ));
  }
}
