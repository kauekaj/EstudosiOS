//
//  ViewController.swift
//  TodayAppDIo
//
//  Created by kauekaj on 7/11/22.
//

import UIKit

class ListaLembreteController: UITableViewController {
    
    static let detalheSegue = "DetalheLembreteSegue"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Self.detalheSegue,
           let destino = segue.destination as? DetalheLembreteViewController,
           let cell = sender as? UITableViewCell,
           let indexPath = tableView.indexPath(for: cell) {
            let lembrete = Lembrete.listaLembrete[indexPath.row]
            destino.configure(lembrete: lembrete)
        }
    }
}

extension ListaLembreteController {
    
    static let lembreteCellIdentifier = "LembreteCellIdentifier"
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Lembrete.listaLembrete.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Self.lembreteCellIdentifier) as? LembreteCell else {
            fatalError()
        }
        
        let lembrete = Lembrete.listaLembrete[indexPath.row]
        
        let image = lembrete.foiFeito ? UIImage(systemName: "circle.fill") : UIImage(systemName: "circle")
        
        cell.dateLabel.text = lembrete.dataLimite.description
        cell.titleLabel.text = lembrete.titulo
        cell.doneButton.setBackgroundImage(image, for: .normal)
        cell.doneButtonAction = {
            Lembrete.listaLembrete[indexPath.row].foiFeito.toggle()
            tableView.reloadRows(at: [indexPath], with: .none)
        }
        return cell
    }
}
