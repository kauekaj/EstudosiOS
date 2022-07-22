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
    
    private var acaoBotaoFeito: AcaoBotaoFeito?
    
    @IBAction func botaoFeitoApertado(_ sender: UIButton) {
            acaoBotaoFeito?()
        }
    
    func configurar(cellViewModel: LembreteCellViewModel, acaoBotaoFeito: @escaping AcaoBotaoFeito) {
        tituloLabel.text = cellViewModel.textoTitulo()
        dataLabel.text = cellViewModel.dataLimite()
        
        let imagem = cellViewModel.tarefaFeita() ? UIImage(systemName: "circle.fill") : UIImage(systemName: "circle")
        
        botaoFeito.setBackgroundImage(imagem, for: .normal)
        
        self.acaoBotaoFeito = acaoBotaoFeito
    }
}
