//
//  ViewController.swift
//  AppMVVMTodayDIO
//
//  Created by kauekaj on 7/13/22.
//

import UIKit

class ListaLembreteViewController: UITableViewController {
    
    var viewModel: ListaLembretesViewModel = ListaLembretesViewModel()
}


extension ListaLembreteViewController  {
    
    static let lembreteCellIdentifier = "LembreteCell"
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numeroLinhas()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Self.lembreteCellIdentifier, for: indexPath) as? LembreteCell else {
            fatalError("Não foi possível reutilizar a célula")
        }
        
        let lembrete = viewModel.lembrete(linha: indexPath.row)
        
        cell.tituloLabel.text = lembrete.titulo
        cell.dataLabel.text = lembrete.dataLimite.description
        
        let imagem = lembrete.foiFeito ? UIImage(systemName: "circle.fill") : UIImage(systemName: "circle")
        cell.botaoFeito.setBackgroundImage(imagem, for: .normal)
        
        cell.acaoBotaoFeito = {
            self.viewModel.toggleLembrete(linha: indexPath.row)
            tableView.reloadRows(at: [indexPath], with: .none)
        }
        
        return cell
    }
}
