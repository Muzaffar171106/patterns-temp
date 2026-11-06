
import 'package:builder/creational/builder/Computer/computer.dart';
import 'package:builder/creational/builder/Computer/computerbuilder.dart';
import 'package:builder/creational/builder/Computer/mcbuilder.dart';

class PCBuilder implements ComputerBuilder {
  late Computer _computer;

  PCBuilder() {
    reset();
  }
  @override
  void reset() {
    _computer = Computer();
  }
  @override
  void setCPU(String cpu) => _computer.cpu = cpu;
  @override
  void setRAM(int ramGB) => _computer.ramGB = ramGB;
  @override
  void setOS(String os) => _computer.os = os;
  @override
  void setStorage(int storageSSDGB) => _computer.storageSSDGB = storageSSDGB;
  @override
  void setMouseType(String mouseType) => _computer.mouseType = mouseType;

  @override
  void setKeyboardType(String keyboardType) => _computer.keyboardType = keyboardType;

  @override
  Computer getResult() {
    Computer product = _computer;
    reset();
    return product;
  }
}