void main(){

  print('Hello!');
  

String myName = 'My name is Nurai Sultanbaeva';
int myAge = 20 ;
String myCity = 'I live in Bishkek';
String myProfession = 'Me profession is IT';
String myHobby = 'In my free time, I enjoy sleap';
print( myName);
print(myAge);
print(myCity);
print(myProfession);
print(myHobby);



int salary = 5000; // зарплата в месяц

  int yearlyIncome = salary * 12; // доход за год
  double yearlyWithBonus = yearlyIncome * 1.10; // +10%

  print("My yearly income: $yearlyIncome USD.");
  print("My yearly income with 10% bonus: $yearlyWithBonus USD.");



  String sampleString = " Knowledge is power, but practice makes perfect. ";
  print(sampleString.toUpperCase());
  print(sampleString.trim());
  print(sampleString.replaceAll('practice', 'experience'));
  print(sampleString.contains('power'));

  int apples = 12;
  int people = 5;

  print('Each person gets: ${apples ~/ people}');
  print('Apples left: ${apples % people}.');


  print('My name is $myName. And I work as $myProfession. I am $myAge years old. ');
  print('I was born in ${2026 - myAge}.');
  print('My salary is ${myAge} USD.');


  var city  = 'Dishkek'; // var — переменную можно изменить
  final country = 'Kyrgyzstan'; // final — значение задаётся один раз и больше не меняется

  city = 'Osh';
  print('City: $city');
  print('Country: $country');

}