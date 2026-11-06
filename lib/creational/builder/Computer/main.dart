import 'package:builder/creational/builder/Computer/computer.dart';
import 'package:builder/creational/builder/Computer/director.dart';
import 'package:builder/creational/builder/Computer/mcbuilder.dart';
import 'package:builder/creational/builder/Computer/pcbuilder.dart';
import 'package:builder/creational/builder/Computer/computer.dart';

void main(){
  final director = Director();
  
  final macBuilder = MacBuilder();
  director.setMacBuilder(macBuilder);
  Computer myMac = macBuilder.getResult();
  myMac.showSpecs();


  final pcBuilder = PCBuilder();
  director.setPCBuilder(pcBuilder);
  Computer officePC = pcBuilder.getResult();
  officePC.showSpecs();

  director.setLinuxbuilder(pcBuilder);
  Computer linuxPC = pcBuilder.getResult();
  linuxPC.showSpecs();
}