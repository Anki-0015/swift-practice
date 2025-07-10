// struct Size{
//     var width: Double
//     var height: Double

//     func area() -> Double {
//         return width * height
//     }
// }

// var someSize = Size(width: 10.0, height: 5.0)
// print("Area of the size is \(someSize.area())")





// struct Car{

//     var odoMeter: Int
//     var speed: Int

//     func printCarStatus() {

//         print("the car's speed is \(speed) and its current running status is \(odoMeter) km")
//     }

//     mutating func speedUp(speed: Int){

//         self.speed += speed
//     }

//     mutating func odoMeterUp(){

//         odoMeter += 1
//     }
// }

// var buggati = Car(odoMeter: 1000, speed:410)
// buggati.printCarStatus()
// buggati.odoMeterUp()
// buggati.speedUp()
// buggati.printCarStatus()





// struct Temp {

//     var celesius: Double
//     var faranheit: Double
//     var kelvin: Double

//     init(cel:Double){

//         self.celesius = cel
//         self.faranheit = (cel * 9/5) + 32
//         self.kelvin = cel + 273.15

//     }

//     init(fer:Double){

//         self.faranheit = fer
//         self.celesius = (fer - 32) * 5/9
//         self.kelvin = (fer - 32) * 5/9 + 273.15

//     }  
// }

// var chitkara = Temp(celesius: 25.0, faranheit: 77.0, kelvin: 298.15)
// print("Celsius: \(chitkara.celesius), Fahrenheit: \(chitkara.faranheit), Kelvin: \(chitkara.kelvin)")