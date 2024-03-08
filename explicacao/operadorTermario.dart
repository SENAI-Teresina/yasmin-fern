import 'dart:io';

void main(){
    print("digite sua idade: ");
    int idade = int.parse(stdin.readLineSync()!);
    String status = idade >= 18 ? "maior de idade" : "menor de idade";
    print("$status");}