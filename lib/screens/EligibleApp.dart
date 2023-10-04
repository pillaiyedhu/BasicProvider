import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sept13_provider_try/providers/EligibleProvider.dart';

class EligibleApp extends StatelessWidget{
  final controller = TextEditingController();

  Widget build(BuildContext context){
    final provider = Provider.of<EligibleProvider>(context);
    return Scaffold(
      appBar:AppBar(
        title: Text('Eligible App'),
        centerTitle:true
      ),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: provider.changeColor==true ? Colors.green : Colors.red,
                shape: BoxShape.circle,
              ),
            ),
            
            const SizedBox(height: 20,),

            TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: 'Enter your Age'
              ),
            ),

            ElevatedButton(
              onPressed: (){
                int age = int.parse(controller.text.trim());
                provider.checkEligibility(age);
              }, 
              child: const Text('Check')
            ),

            Text(provider.eligibleMessage)
          ],
        )
      ),

    );

  }
}