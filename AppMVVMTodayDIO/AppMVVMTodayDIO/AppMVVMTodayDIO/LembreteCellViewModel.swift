//
//  LembreteCellViewModel.swift
//  AppMVVMTodayDIO
//
//  Created by kauekaj on 7/19/22.
//

import Foundation

final class LembreteCellViewModel {
    private var lembrete: Lembrete
    
    init(lembrete: Lembrete) {
        self.lembrete = lembrete
    }
    
    func textoTitulo() -> String {
        return lembrete.titulo
    }
    
    func dataLimite() -> String {
        return lembrete.dataLimite.description
    }
    
    func notas() -> String? {
        return lembrete.notas
    }
    
}
