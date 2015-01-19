import 'package:awsdart/io.dart';
import 'package:awsdart_dynamodb/awsdart_dynamodb.dart';
import 'package:matcher/matcher.dart';

// takes acsess key and secret key as arguments.
main(List args) async {
  setupAwsIO();
  var accessKey = args[0];
  var secretKey = args[1];
  var item = {
              'test_key':'validation test',
              'int': 42,
              'string': 'Hello DynamoDb',
              'list': [1, 2, 3],
              'map': {'a':1, 'b':2, 'c':3},
              'bool': true
  };
  
  Aws aws = new Aws(accessKey: accessKey, secretKey: secretKey);
  Dynamodb ddb = new Dynamodb(aws);
  Table table = ddb.getTable('awsdart_dynamodb_test');
  
  print('Set a new item');
  await table.set(item);
  
  print('Get same item');
  var gottenItem = await table.get('validation test');
  expect(gottenItem, item);
  
  print('Delete item');
  await table.delete('validation test');
  
  print('Done.');
}