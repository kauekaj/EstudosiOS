//
//  LembretesDataSource.swift
//  AppMVVMTodayDIO
//
//  Created by kauekaj on 7/19/22.
//

import UIKit

class LembretesDataSource: NSObject {
    var viewModel: ListaLembretesViewModel
    
    init(viewModel: ListaLembretesViewModel) {
        self.viewModel = viewModel
    }
}

extension LembretesDataSource: UITableViewDataSource {
    
    static let lembreteCellIdentifier = "LembreteCell"
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numeroLinhas()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Self.lembreteCellIdentifier, for: indexPath) as? LembreteCell else {
            fatalError("Não foi possível reutilizar a célula")
        }
        
        let lembrete = viewModel.lembrete(linha: indexPath.row)
        let cellViewModel = LembreteCellViewModel(lembrete: lembrete)
        
        cell.configurar(cellViewModel: cellViewModel) {
            self.viewModel.toggleLembrete(linha: indexPath.row)
            tableView.reloadRows(at: [indexPath], with: .none)
        }
                
        
        return cell
    }
}
