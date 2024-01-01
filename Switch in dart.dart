void main (){
  // Switch
  String destinationZone = 'NYC';
  double weightInKgs = 4.5;
  
  switch (destinationZone){
    case 'PQR':
      print('Shipping cost: ${weightInKgs*10}');
    case 'XYZ':
      print('Shipping cost: ${weightInKgs*13}');
    case 'ABC':
      print('Shipping cost: ${weightInKgs*20}');
    default:
      print('Invalid Destination Zone');
  }
}
