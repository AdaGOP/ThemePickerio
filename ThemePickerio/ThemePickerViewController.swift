//
//  ThemePickerViewController.swift
//  ThemePickerio
//
//  Created by Allicia Viona Sagi on 23/06/23.
//

import UIKit

class ThemePickerViewController: UIViewController {

    var lblName: String?
    var backgroundColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = backgroundColor
    }
    
    @IBAction func pressBrocoli(_ sender: Any) {
        lblName = "🥦"
        backgroundColor = .systemGreen
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func pressChili(_ sender: Any) {
        lblName = "🌶️"
        backgroundColor = .systemRed
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func pressLemon(_ sender: Any) {
        lblName = "🍋"
        backgroundColor = .systemYellow
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func pressGrape(_ sender: Any) {
        lblName = "🍇"
        backgroundColor = .systemPurple
        dismiss(animated: true, completion: nil)
    }
    

}
