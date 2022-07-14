//
//  LembreteDataSource.swift
//  AppMVCTodayDIO
//
//  Created by kauekaj on 7/12/22.
//

import UIKit

class LembreteDataSource: NSObject {
    
}

extension LembreteDataSource: UITableViewDataSource {
    
    static let lembreteCellIdentifier = "LembreteCellIdentifier"
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Lembrete.listaLembrete.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Self.lembreteCellIdentifier, for: indexPath) as? LembreteCell else {
            fatalError()
        }
        
        let lembrete = Lembrete.listaLembrete[indexPath.row]
            
        cell.configure(titulo: lembrete.titulo, data: lembrete.dataLimite.description, foiFeito: lembrete.foiFeito) {
            Lembrete.listaLembrete[indexPath.row].foiFeito.toggle()
            tableView.reloadRows(at: [indexPath], with: .none)
        }
        return cell
    }
}
