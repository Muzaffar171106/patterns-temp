import 'package:builder/Computer/computer.dart';

abstract class ComputerBuilder {
  void reset();
  void setCPU(String cpu);
  void setRAM(int ramGB);
  void setOS(String os);
  void setStorage(int storageSSDGB);
  void setMouseType(String mouseType);
  void setKeyboardType(String keyboardType);
  Computer getResult();
}