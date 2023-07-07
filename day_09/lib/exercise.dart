import 'dart:io';

class Cat {
 final String _asciiArt = '''
  /\\_/\\
  ( o.o )
   > ^ <
   ''';
  int x = 0;
  int y = 0;
  void display(){
    List<String> lines = _asciiArt.trim().split('\n');
    for(int i = 0 ; i <= lines.length; i++){
      if(i == y){
        print(''*x + lines[i]);
      } else{
        print(lines);
      }
    }
    void move(x, y){

    }
  }

}

void main(){
final cat = Cat();
cat.display();
}