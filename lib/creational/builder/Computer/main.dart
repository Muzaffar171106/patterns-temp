import 'package:builder/Computer/computer.dart';
import 'package:builder/Computer/director.dart';
import 'package:builder/Computer/mcbuilder.dart';
import 'package:builder/Computer/pcbuilder.dart';

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