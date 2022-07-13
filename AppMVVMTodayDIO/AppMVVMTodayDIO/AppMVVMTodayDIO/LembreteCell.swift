//
//  LembreteCell.swift
//  AppMVVMTodayDIO
//
//  Created by kauekaj on 7/13/22.
//

import UIKit

class LembreteCell: UITableViewCell {
    
    typealias AcaoBotaoFeito = () -> Void
    
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var botaoFeito: UIButton!
    
    var acaoBotaoFeito: AcaoBotaoFeito?
    
    @IBAction func botaoFeitoApertado(
        _ sender: UIButton) {
            acaoBotaoFeito?()
        }
}
