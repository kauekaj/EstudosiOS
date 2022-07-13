//
//  DetalheLembreteViewController.swift
//  AppMVCTodayDIO
//
//  Created by kauekaj on 7/12/22.
//

import UIKit

class DetalheLembreteViewController: UITableViewController {
    
    func configure(lembrete: Lembrete) {
        self.lembrete = lembrete
    }
    
    private var lembrete: Lembrete?
    private var detalheDataSource: DetalheLembreteDataSource?
    
    override func viewDidLoad() {
        guard let lembrete = lembrete else {
            fatalError("Não existe nenhum lembrete")
        }
        
        detalheDataSource = DetalheLembreteDataSource(lembrete: lembrete)
        tableView.dataSource = detalheDataSource
    }
}

extension DetalheLembreteViewController {
    
}
