//
//  ViewController.swift
//  ThemePickerio
//
//  Created by Allicia Viona Sagi on 23/06/23.
//

import UIKit

protocol ThemePickerDelegate {
    func getThemeName(name: String)
    func getThemeColor(color: UIColor)
}

class ViewController: UIViewController, ThemePickerDelegate {
    
    var themeName: String = "🥦"
    var themeColor: UIColor = .systemGreen

    @IBOutlet weak var lblEmoji: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblEmoji.text = themeName
        view.backgroundColor = themeColor
    }

    @IBAction func pressChangeTheme(_ sender: Any) {
        let themePickerStoryboard = UIStoryboard(name: "ThemePicker", bundle: nil)
        let themePickerVC = themePickerStoryboard.instantiateViewController(withIdentifier: "ThemePickerViewController") as! ThemePickerViewController
        themePickerVC.themePickerDelegate = self
        themePickerVC.backgroundColor = themeColor
        present(themePickerVC, animated: true, completion: nil)
    }
    
    func getThemeName(name: String) {
        themeName = name
        lblEmoji.text = themeName
    }
    
    func getThemeColor(color: UIColor) {
        themeColor = color
        view.backgroundColor = themeColor
    }
    
}

