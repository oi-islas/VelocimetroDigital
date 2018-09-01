//: Velocímetro digital de un auto: Asignación de la semana 4.

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades) {
        self.init(velocidadInicial: velocidadInicial)
    }
}

class Auto {
    var velocidad : Velocidades
    
    init() {
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, cambioDeVelocidad : String) {
        var resultado = (0, "Apagado")
        
        switch self.velocidad {
        case Velocidades.Apagado:
            velocidad = Velocidades.VelocidadBaja
            resultado = (self.velocidad.rawValue, "Velocidad baja")
            
        case Velocidades.VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
            resultado = (self.velocidad.rawValue, "Velocidad media")
            
        case Velocidades.VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
            resultado = (self.velocidad.rawValue, "Velocidad alta")
            
        default:
            velocidad = Velocidades.VelocidadMedia
            resultado = (self.velocidad.rawValue, "Velocidad media")
        }
        
        return resultado
    }
}

var auto = Auto()

print("\(auto.velocidad.rawValue), \(auto.velocidad)")

for _ in 1...20 {
    let velocidad = auto.cambioDeVelocidad()
    print("\(velocidad.actual), \(velocidad.cambioDeVelocidad)")
}
