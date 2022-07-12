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
    
    var doneButtonAction: DoneButtonAction?
    
    @IBAction func doneButtonTapped(_ sender: UIButton) {
        doneButtonAction?()
        print("Tapped")
    }
    
}
