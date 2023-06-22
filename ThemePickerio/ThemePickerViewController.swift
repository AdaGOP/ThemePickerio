//
//  ThemePickerViewController.swift
//  ThemePickerio
//
//  Created by Allicia Viona Sagi on 23/06/23.
//

import UIKit

class ThemePickerViewController: UIViewController {

    var themePickerDelegate: ThemePickerDelegate?
    var backgroundColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = backgroundColor
    }
    
    @IBAction func pressBrocoli(_ sender: Any) {
        themePickerDelegate?.getThemeName(name: "🥦")
        themePickerDelegate?.getThemeColor(color: .systemGreen)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func pressChili(_ sender: Any) {
        themePickerDelegate?.getThemeName(name: "🌶️")
        themePickerDelegate?.getThemeColor(color: .systemRed)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func pressLemon(_ sender: Any) {
        themePickerDelegate?.getThemeName(name: "🍋")
        themePickerDelegate?.getThemeColor(color: .systemYellow)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func pressGrape(_ sender: Any) {
        themePickerDelegate?.getThemeName(name: "🍇")
        themePickerDelegate?.getThemeColor(color: .systemPurple)
        dismiss(animated: true, completion: nil)
    }
    

}
