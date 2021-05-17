import 'package:flutter/material.dart';
import 'package:flutter_provider/business_logic/models/provider_state.dart';
import 'package:flutter_provider/business_logic/utils/navigation_service.dart';
import 'package:flutter_provider/business_logic/utils/route_constant.dart';
import 'package:provider/provider.dart';


class ProviderDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ProviderState _providerState = Provider.of<ProviderState>(context,listen: false);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Text("UID: ${_providerState.getUid}"),
            Text("Email : ${_providerState.getEmail}"),
            RaisedButton(onPressed: (){

              try{
                _providerState.signOut().then((value){
                  NavigationService().pushNamedAndRemoveUntil(loginRoute);
                });

              }catch(e){

              }


            },child: Text("Sign Out "),),
          ],
        ),
      ),
    );
  }
}