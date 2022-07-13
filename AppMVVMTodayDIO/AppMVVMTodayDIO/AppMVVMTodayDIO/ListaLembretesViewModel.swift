//
//  ListaLembretesViewModel.swift
//  AppMVVMTodayDIO
//
//  Created by kauekaj on 7/13/22.
//

import Foundation

final class ListaLembretesViewModel {
    
    var lembretes = Lembrete.dadosLembretes
    
    func numeroLinhas() -> Int {
        return lembretes.count
    }
    
    func lembrete(linha: Int) -> Lembrete{
        return lembretes[linha]
    }
    
    //Modifica o foiFeito
    
    func toggleLembrete(linha: Int) {
        lembretes[linha].foiFeito.toggle()
    }
}
