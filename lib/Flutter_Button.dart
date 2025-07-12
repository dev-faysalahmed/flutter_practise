import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FButton extends StatelessWidget {
  const FButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter Button', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// Elevated Button================
            Text('Elevated Button:', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold,),),
            ElevatedButton( style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                //borderRadius: BorderRadius.circular(10),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10), bottomLeft: Radius.zero, bottomRight: Radius.zero),
        
              )
        
            ),
                onPressed: (){}, child: Text('Button', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),)),
        
            SizedBox(
              height: 50,
              //width: 50,
              width: double.infinity,
              child: ElevatedButton( style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    //borderRadius: BorderRadius.circular(10),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10), bottomLeft: Radius.zero, bottomRight: Radius.zero),
        
                  )
        
              ),
                  onPressed: (){}, child: Text('Button', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),)),
            ),
            
            
            /// Outline Button=================
            SizedBox(height: 10,),
            Text('Outline Button:', style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.orange, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),

                  )
                ),
                onPressed: (){}, child: Text('Button', style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),)),


            /// Text Button================
            SizedBox(height: 10,),
            Text("Text Button:", style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),),
            TextButton(onPressed: (){}, child: Text('Button', style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),)),
            
            /// Icon Button
            SizedBox(height: 10,),
            Text('Icon Button:', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
            IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
                onPressed: (){}, icon: Icon(Icons.phone_android, size: 50,)),

            /// GestureDetector and Inkwell
            SizedBox(height: 10,),
            Text('GestureDetector and Inkwell', style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),),
            GestureDetector(
                onTap: (){
                  print("Gesture Taped.");
                },
                child: Text("Faysal Ahmed", style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold, fontSize: 30),)),
            InkWell(
                onTap: (){
                  print("Inkwell Taped.");
                },
                child: Text("Faysal Ahmed", style: TextStyle(color: Colors.tealAccent, fontWeight: FontWeight.bold, fontSize: 30),)),

        
          ],
        
        ),
      ),
    );
  }
}
