//
//  EnterNameVC.swift
//  Lesson_3_1
//
//  Created by Maxim Vitovitsky on 05.11.2019.
//  Copyright © 2019 NapoleonIT. All rights reserved.
//

import UIKit

protocol TextDrawable: class {
    func showText(_ text: String?)
}

class EnterNameVC: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    weak var delegate: TextDrawable?
    
    @IBAction func saveName(_ sender: Any) {
        delegate?.showText(nameTextField.text)
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
