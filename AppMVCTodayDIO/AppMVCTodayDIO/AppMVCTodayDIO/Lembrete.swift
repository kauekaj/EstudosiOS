//
//  Lembrete.swift
//  TodayAppDIo
//
//  Created by kauekaj on 7/11/22.
//

import Foundation


struct Lembrete {
    var titulo: String
    var dataLimite: Date
    var notas: String?
    var foiFeito: Bool
}


extension Lembrete {
    static var listaLembrete = [
        Lembrete(titulo: "Correr 10KM", dataLimite: Date().addingTimeInterval(800), notas: "Preparação para maratona", foiFeito: false),
        Lembrete(titulo: "Ir ao Mercado", dataLimite: Date().addingTimeInterval(1800), notas: "Comprar ovo", foiFeito: false),
        Lembrete(titulo: "Fazer Lição de casa", dataLimite: Date().addingTimeInterval(90000), notas: "Matemática e Português", foiFeito: true),
        Lembrete(titulo: "Responder questionário DIO", dataLimite: Date().addingTimeInterval(80000), foiFeito: false),
        Lembrete(titulo: "Assistir todas as aulas do curso MVC", dataLimite: Date().addingTimeInterval(3400), notas: "Responder questionário ao final", foiFeito: false)
    ]
}
