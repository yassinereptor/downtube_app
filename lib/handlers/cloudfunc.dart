import 'package:cloud_functions/cloud_functions.dart';
import 'package:dio/dio.dart';

getAns(){
  CloudFunctions.instance.call(functionName: 'helloWorld').then((val){
    print(val);
  });
}