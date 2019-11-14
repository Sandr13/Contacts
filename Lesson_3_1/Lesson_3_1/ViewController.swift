//
//  ViewController.swift
//  Lesson_3_1
//
//  Created by Maxim Vitovitsky on 05.11.2019.
//  Copyright © 2019 NapoleonIT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var texts = [""] {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "enterName" else { return }
        
        let enterNameVC = segue.destination as! EnterNameVC
        enterNameVC.delegate = self
    }
    
}

extension ViewController: UITableViewDataSource {
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 10
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        texts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //print("row - \(indexPath.row)")
        
        let cellID: String
        
        cellID = "leftAlignedText"
        /*  if indexPath.row > 5 {
            cellID = "leftAlignedText"
        } else {
            cellID = "rightAlignedText"
        }*/
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as! TextTableViewCell
        
        let text = texts[indexPath.row]
        
        cell.setup(with: text)
        
        return cell
    }
    
}


extension ViewController: TextDrawable {
    
    func showText(_ text: String?) {
        guard let text = text else { return }
        texts.append(text)
    }
    
}
