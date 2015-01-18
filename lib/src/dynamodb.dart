part of awsdart_dynamodb;

class Dynamodb {
  Dynamodb(Aws coreClient);
  
  Table getTable(String name) => new Table._(name,this);
}