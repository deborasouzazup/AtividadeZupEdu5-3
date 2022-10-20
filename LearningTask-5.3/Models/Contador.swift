//
//  Contador.swift
//  LearningTask-5.3
//
//  Created by Debora.souza on 20/10/22.
//

import Foundation

struct Contador {
    var numeroContador: Int = 1
    private ( set ) var numeroIncremento: Int = 0
    
    mutating func diminuirContador() {
        numeroIncremento -= numeroContador
    }
    
    mutating func aumentarContador() {
        numeroIncremento += numeroContador
    }
    
    mutating func resetContador() {
        self = Contador()
    }
}
