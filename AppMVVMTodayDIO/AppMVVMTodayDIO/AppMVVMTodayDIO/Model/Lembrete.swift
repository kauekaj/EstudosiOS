//
//  Lembrete.swift
//  AppMVVMTodayDIO
//
//  Created by kauekaj on 7/13/22.
//

import Foundation


struct Lembrete {
    var titulo: String
    var dataLimite: Date
    var notas: String? = nil
    var foiFeito: Bool = false
}

extension Lembrete {
    static var dadosLembretes = [
        Lembrete(titulo: "Fazer curso MVC", dataLimite: Date().addingTimeInterval(9000), foiFeito: false),
        Lembrete(titulo: "Fazer curso MVC", dataLimite: Date().addingTimeInterval(1000), notas: "Primeiro fazer o curso MVC", foiFeito: false),
        Lembrete(titulo: "Fazer commit dessas alterações", dataLimite: Date().addingTimeInterval(80), foiFeito: false),
        Lembrete(titulo: "Ir ao mercado", dataLimite: Date().addingTimeInterval(8000), foiFeito: true),
        Lembrete(titulo: "Comprar comida do cachorro", dataLimite: Date().addingTimeInterval(4000), foiFeito: true),
        Lembrete(titulo: "Comprar presente de natal", dataLimite: Date().addingTimeInterval(39400), foiFeito: false),
    ]
}
