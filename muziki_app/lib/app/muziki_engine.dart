

import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../authentication/authentication_bloc.dart';


class MuzikiEngine extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    context.read<AuthenticationBloc>().add(const AuthenticationEvntSuccess());


    //final ThemeData globalTheme = Provider.of<GlobalTheme>(context).globalTheme;
    return MaterialApp(
      title: 'Muziki',
      //initialRoute: '/',
      theme: globalTheme,
      home: FlowBuilder<AuthenticationState>(
        state: context.select(
          ((AuthenticationBloc bloc) => bloc.state),
        ),
        onGeneratePages: onGenerateAppViewPages,
      ),
    );
  }
}

List<Page> onGenerateAppViewPages(
    AuthenticationState state, List<Page<dynamic>> pages) {


  if (state is StateAuthenticationSuccess) {
    return [HomePage.page()];
  }
  return [ChasingDots.page()];
}