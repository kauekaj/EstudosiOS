//
//  LembreteCell.swift
//  TodayAppDIo
//
//  Created by kauekaj on 7/12/22.
//

import UIKit

class LembreteCell: UITableViewCell {
    
    typealias DoneButtonAction = () -> Void
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var doneButton: UIButton!
    
    private var doneButtonAction: DoneButtonAction?
    
    @IBAction func doneButtonTapped(_ sender: UIButton) {
        doneButtonAction?()
        print("Tapped")
    }
    
    func configure(titulo: String, data: String, foiFeito: Bool, acaoBotao: @escaping DoneButtonAction) {
        self.titleLabel.text = titulo
        self.dateLabel.text = data
        let imagem = foiFeito ? UIImage(systemName: "circle.fill") : UIImage(systemName: "circle")
        doneButton.setBackgroundImage(imagem, for: .normal)
        self.doneButtonAction = acaoBotao
    }
}
