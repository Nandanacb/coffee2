import 'package:coffe1/database.dart';
import 'package:flutter/material.dart';

class Coffe1Example extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      backgroundColor: Colors.black,
      body:Column(
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text("Cart",style: TextStyle(fontSize: 30,color: Colors.white),),
          )),
          Expanded(
            child: ListView.builder(
              itemCount:3,
              itemBuilder:(context,index){
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Padding(
                         padding: const EdgeInsets.all(12),
                         child: Container(
                            height: 50,
                            width: 60,
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage( Database.mycoffie[index]["image"]),
                            fit: BoxFit.cover)),
                            
                          ),
                       ),
                      
                      
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                        
                          Text(Database.mycoffie[index]["name"],style: TextStyle(fontSize: 10,color: Colors.white),),
                          
                          
                          Padding(
                            padding: const EdgeInsets.all(14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.currency_rupee,color: Colors.white),
                                Text(Database.mycoffie[index]["price"],style: TextStyle(fontSize: 15,color: Colors.white),),
                              ],
                            ),
                          ),
                          ],
                                              
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 80),
                          child: Row(
                           
                            children: [
                              Container(
                                height: 40,
                                width: 70,
                                child: FloatingActionButton(onPressed: (){},child: Text("-"),),
                                color: Colors.white,
                              ),
                              Text("2" style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        ),

                    
                      ],
                    ),
                  ),
                  
                );
              
              }),
          ),
        ],
      ),
    );
  }
}