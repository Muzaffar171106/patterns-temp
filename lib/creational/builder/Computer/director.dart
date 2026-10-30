import 'package:builder/Computer/computerbuilder.dart';

class Director{
  void setMacBuilder(ComputerBuilder builder){
    builder.setCPU('Apple M1');
    builder.setRAM(16);
    builder.setStorage(512);
    builder.setMouseType('Magic Mouse');
    builder.setKeyboardType('Magic Keyboard');
    builder.setOS('macOS');
  }
  void setPCBuilder(ComputerBuilder builder){
    builder.setCPU('Intel Core i9');
    builder.setRAM(32);
    builder.setStorage(1024);
    builder.setMouseType('Gaming Mouse');
    builder.setKeyboardType('Mechanical Keyboard');
    builder.setOS('Windows 11');
  }
  void setLinuxbuilder(ComputerBuilder builder){
    builder.setCPU('AMD Ryzen 9');
    builder.setRAM(64);
    builder.setStorage(2048);
    builder.setMouseType('Ergonomic Mouse');
    builder.setKeyboardType('Mechanical Keyboard');
    builder.setOS('Linux');
  }
}