class Computer {
  String? cpu;
  int? ramGB;
  String? os;
  int? storageSSDGB;
  String? mouseType;    
  String? keyboardType; 

  void showSpecs() {
    print('--- Computer ---');
    print('CPU: $cpu');
    print('RAM: ${ramGB}GB');
    print('OS: $os');
    print('Storage: ${storageSSDGB}GB SSD');
    print('Mouse Type: $mouseType');
    print('Keyboard Type: $keyboardType');
    print('-------------------------------\n');
  }
}