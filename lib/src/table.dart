part of awsdart_dynamodb;

class Table {
  
  Future<Map<String, dynamic>> get(key, [range]){
    return new Future.value({});
  }
  
  Future set(Map jsonData){
    return new Future.value(null);
  }
  
  Future delete(key, [range]){
    return new Future.value(null);
  }
  
  Table._(String name, Dynamodb dynamo){
    
  }
}