//
//  ViewController.swift
//  TodayAppDIo
//
//  Created by kauekaj on 7/11/22.
//

import UIKit

class ListaLembreteController: UITableViewController {
    
    static let detalheSegue = "DetalheLembreteSegue"
    
    private var lembreteDataSource: LembreteDataSource?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lembreteDataSource = LembreteDataSource()
        tableView.dataSource = lembreteDataSource
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

