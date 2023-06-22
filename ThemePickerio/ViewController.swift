//
//  ViewController.swift
//  ThemePickerio
//
//  Created by Allicia Viona Sagi on 23/06/23.
//

import UIKit

class ViewController: UIViewController {
    
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
        themePickerVC.backgroundColor = themeColor
        themePickerVC.lblName = themeName
        present(themePickerVC, animated: true, completion: nil)
    }
 
    
}

