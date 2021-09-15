//
//  ViewController.swift
//  Kadai12
//
//  Created by 吉田晃崇 on 2021/09/13.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var zeinukiTextField: UITextField!
    @IBOutlet private weak var zeirituTextField: UITextField!
    @IBOutlet private weak var zeikomiLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        if let zeiritu1 = UserDefaults.standard.object(forKey: "zeiritu") {
            zeirituTextField.text = zeiritu1 as? String
        }
    }

    @IBAction private func calculationButton(_ sender: Any) {
        let zeinuki = Int(zeinukiTextField.text ?? "") ?? 0
        let zeiritu = Double(zeirituTextField.text ?? "") ?? 0
        let zeikomi = Int(Double(zeinuki) * (1.0 + zeiritu * 0.01))
        zeikomiLabel.text = String(zeikomi)
        UserDefaults.standard.set(zeirituTextField.text, forKey: "zeiritu")
    }
}
