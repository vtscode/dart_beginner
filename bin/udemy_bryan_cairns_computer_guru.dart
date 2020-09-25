import 'package:udemy_bryan_cairns_computer_guru/udemy_bryan_cairns_computer_guru.dart' as udemy_bryan_cairns_computer_guru;
import 'dart:io';
import 'dart:async';
import 'dart:collection';
//void mean nothing, function without return value
void main(List<String> arguments) {
  // BooleanData();
  // NumbersData();
  // StringData();
  // ConstantData();
  // TryLibrary();

  // CollectionEnum();
  // CollectionList();
  // CollectionSet();
  // CollectionQueue();
  // CollectionMap();

  // FlowControlAssert();
  // FlowControlCondition();
  // FlowControlScope();
  // FlowControlSwitch();
  // FlowControlLoop();

  // FuncBasic();
  // FuncOptionalParams();
  // FuncNamedParams();
  // FuncAsObj();
  // FuncAnonymous();

  ErrorHandleException();
}
void BooleanData () {
  // Boolean datatype
  var isOn = true;
  print('Hello world: ${udemy_bryan_cairns_computer_guru.calculate()}!');
  bool isDog = true;
  print('isDog : ${isDog.runtimeType}');
  print('isOn : ${isOn}');
}
void NumbersData() {
  // Numbers datatype
  num age = 34;
  // integer
  num people = 7;
  // double
  double temp = 28.55;
  //  parse integer
  int test = int.parse('123');
  print(test);

  int err = int.parse('123.12', onError: (source) => 0);
  print('error =  ${err}');

  //  Math
  int dogyear = 7;
  int dogage = age ~/ dogyear; //negation substract with real value not take decimal in it 4,85... just take value 4
  print('Your dog age is ${dogage} years old');
}
void StringData() {
  String halo = 'halo kmu';
  print(halo);
  String name = 'Riventus AHA';
  print(name);

  // get a substring
  String firstname = name.substring(0,7);
  print('firstname : ${firstname}');
  
  //  get the index of a string
  int index = name.indexOf(" ");
  String lastname = name.substring(index).trim();
  print('lastname : ${lastname}');
  
  print(name.length);
  // contains
  print(name.contains('us'));

  List parts = name.split('');
  print(parts);
}
void ConstantData(){
  String halo = 'halo';
  const String world = 'World'; // cant change respectively
  // world = 'asdasd'; // error
  print('${halo} ${world}');
}
void TryLibrary() {
  stdout.write('what is yout name ?\r\n');
  String name = stdin.readLineSync(); // catch user typing value, until hit enter

  name.isEmpty ? stderr.write('Name is empty') : stdout.write('Halo ${name} ! \r\n');
}

enum colors{red,green,blue}  // allow switching
void CollectionEnum(){
  print(colors.values);
  print(colors.red);
}
void CollectionList(){
  // List test = [1,2,3,4]; //assigned this ==> [1,2,3,4] list on test variable
  // print('length : ${test.length}'); // how many
  // print('first item : ${test[0]}'); // zero = index
  //
  // print(test.elementAt(3)); //spesific index

  List things = new List();
  things.add(1);
  things.add('cats');
  things.add(true);
  print(things);

  List<int> numbers = new List<int>(); // generic type of integer List<int> list with contain only integer datatype.
  numbers.add(1);
  // numbers.add('cats'); //ERROR
}
void CollectionSet() {
  /*
  Set data type unique, not duplicated content
  */
  Set<int> numbers = new Set<int>();
  numbers.add(1);
  numbers.add(2);
  numbers.add(2); // added twice
  print(numbers);
}
void CollectionQueue(){
//  Ordered, no index, add and remove from the start and end
  Queue items = new Queue();
  items.add(1);
  items.add(3);
  items.add(2);
  items.removeFirst();
  items.removeLast();
  print(items);
}
void CollectionMap(){
//  map = key value pair
  Map people = {
    'dad' : 'Riventus',
    'son' : 'Armandus',
    'daughter' : 'Hamonangan'
  };
  print('Data : ${people}');
  print('keys map : ${people.keys}');
  print('values map : ${people.values}');
  print('dad : ${people['dad']}');

  print('============ another example ===========');
  Map<String,String> people2 = new Map<String,String>(); // key type string, value type data string
//  initiate with default value on map data
  people2.putIfAbsent('dad', () => 'Riventus');
  // people2.putIfAbsent('son', () => 'Armandus');

  print('Data : ${people2}');
  print('keys map : ${people2.keys}');
  print('values map : ${people2.values}');
  print('dad : ${people2['dad']}');
  print('son : ${people2['son']}');  // it will null cause not in data map people2
}

void FlowControlAssert(){
  print('starting');
  int age = 15;
  assert(age == 43); // determine something true or not
  print('finish');
}
void FlowControlCondition(){
  int age = 43;
  if(age == 43) print('you are 43 years old');
  if(age != 43) print('you are not 43 years old');
  if(age < 18) {
    print('you are minor');
    if(age < 13) print('You are not even a teenager');
  }

  if(age > 65){
    print('You are a senior');
    if(age > 102) print('You are lucky to be alive');
  }

  if(age == 21){
    print('This is your special year'); // on USA 21 its an adult age
  }else{
    print('This is just a normal year');
    if(age < 21){
      print('You are a minor');
    }else{
      print('You are an adult');
    }
  }
}
void FlowControlScope(){
  // everytime u see the bracket its a scope
  // its kinda bubble where variable can live in

  int age = 33;
  if(age == 43) {
    print('you are 43 years old');
  }else{
    bool hasBills = true;
    print('You are not ${age}, bill : ${hasBills}');
  }
}
void FlowControlSwitch() {
  int age = 33;
  switch(age){
    case 10:
      print('You are too young to vote');
      break;

    case 21:
      print('You are an adult');
      break;

    case 65:
      print('You can retire');
      break;

    default:
      print('Nothing special about your age');
      break;
  }
  print('Finish');
}
void FlowControlLoop() {
  //if u want to run first time use do,
  // if u wanna checkit first then used while

  int value;
  int init = 1;
  int max = 5;

  value = init;
  do{
    print(value);
    value++;
  }while(value <= max);

  print("Done with do loop");
  print("============== another example ===========");

  value = init;
  while(value <= max){
    print(value);
    value++;
  }
  print("Done with while loop");

  // infinite loop
  value = init;
  do{
    print("value = ${value}");
    value++;
      if(value == 3){
        print('value is 3');
        continue;
      }
      if(value > 5){
        print('value is greater than 5');
        break;
      }
  }while(true);  // doesnt have expression to stop when false

  print('Finished do, and while loop');

  List people = ['riventus','aijsd','qwera'];
  print(people);
  for(int i = 0; i < people.length; i++){
    print('People at ${i} is ${people[i]}');
  }
  people.forEach((person) {
    print(person);
  });
}

void FuncBasic(){
  sayhai('Riventus');
  print('your age is dog years is ${dogYear(43)}');
  int wall1 = squareFeet(10,10);
  int wall2 = squareFeet(10,20);
  int wall3 = squareFeet(10,10);
  int wall4 = squareFeet(10,20);
  int ceiling = squareFeet(20,10);

  double paint = paintNeeded(wall1, wall2, wall3, wall4, ceiling);
  print('You need ${paint} gallons of paint');
}
void sayhai(String name){
  print('hai ${name} !');
}
int dogYear(int age){
  return age + 7;
}
int squareFeet(int width, int length){
  return width * length;
}
double paintNeeded(int wall1, int wall2, int wall3, int wall4, int ceiling){
  int footage = wall1 + wall2 + wall3 + wall4 + ceiling;
  return footage / 30;
}

void FuncOptionalParams([String name = '']){
  //** optional params must be the end of the params **
  if(name.isNotEmpty) name = name.padLeft(name.length + 1); //  add space on left side where name is not empty
  print('Hai${name}');
  download('myfile.txt');
  download('myfile2.txt',true);
}
void download(String file, [bool open = false]){
  print('Downloading ${file}');
  if(open) print('Opening ${file}');
}

void FuncNamedParams(){
  int footage = squareFeet2(length: 10, width: 5);
  print('Footage is ${footage}');
  download2('myfile');
  download2('myfile2',port : 90);
}
int squareFeet2({int width, int length}){
  return width * length;
}
void download2(String file, {int port : 80}){
  print('Download ${file} on port ${port}');
}


void FuncAsObj(){
 int age = 43;
 var dogYear = calcYears;
 var catYear = calcYears;
 print('Your age in dog years is ${dogYear(age : 43, multiplier : 7)}');
 print('Your age in cat years is ${catYear(age : 43, multiplier : 12)}');
}
int calcYears({int age, int multiplier}){
  return age * multiplier;
}

void FuncAnonymous(){
  //called internal function
  (){
    print('hai');
  };

  List people = ['a','b','c'];
  people.forEach(print);
  print('--------------');
  people.forEach((element) {
    print(element);
  });
  print('--------------');
  people.where((name) { // creating another list
    switch(name){
      case 'a':
        return true;
      case 'b':
        return false;
      case 'c':
        return false;
      default:
        return false;
    }
  }).forEach(print);
}

void ErrorHandleException(){
  // Error is a program failure
  // Exception can be handled

  try{
    int age;
    int dogyears = 7;
    print(age*dogyears);
    // try this code, when error, stop and go to error block statement
  }
  on NoSuchMethodError{
    print('Sorry not gonna happen');
  }
  catch (e) {
  // when trying code error comes in run this code
    print('${e.toString()}');
    /*
    * NoSuchMethodError: The method '*' was called on null.
    * using method on for custom error
     */
  }
  finally{
  //  what happen try or catch just run this code
    print('finally code complete');
  }
  print('------------------------------');
  try{
    int age;
    int dogyears = 7;
    int dog = 8;
    if(dog != 7) throw new Exception('Dog must be 7');
    if(age == null) throw new NullThrownError();

    print(age*dogyears);
  }
  on NullThrownError{
    print('The value was null !!!');
  }
  on NoSuchMethodError{
    print('sorry no such method');
  }
  catch (e){
    print('Unkown error : ${e.toString()}');
  }
  finally{
  print('COMPLETE');
  }
}