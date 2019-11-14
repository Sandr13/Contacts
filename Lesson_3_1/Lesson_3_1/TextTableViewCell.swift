//
//  TextTableViewCell.swift
//  Lesson_3_1
//
//  Created by Maxim Vitovitsky on 05.11.2019.
//  Copyright © 2019 NapoleonIT. All rights reserved.
//

import UIKit

class TextTableViewCell: UITableViewCell {

    @IBOutlet weak var anyTextLabel: UILabel!
    
    func setup(with text: String) {
        anyTextLabel.text = text
    }

}
