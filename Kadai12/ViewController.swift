//
//  ViewController.swift
//  Kadai12
//
//  Created by 吉田晃崇 on 2021/09/13.
//

import UIKit

class ViewController: UIViewController {
    private let keyZeiritu = "zeiritu"

    @IBOutlet private weak var zeinukiTextField: UITextField!
    @IBOutlet private weak var zeirituTextField: UITextField!
    @IBOutlet private weak var zeikomiLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let zeiritu1 = UserDefaults.standard.integer(forKey: keyZeiritu)
        zeirituTextField.text = String(zeiritu1 == 0 ? 10 : zeiritu1)
    }

    @IBAction private func calculationButton(_ sender: Any) {
        let zeinuki = Int(zeinukiTextField.text ?? "") ?? 0
        let zeiritu = Double(zeirituTextField.text ?? "") ?? 0
        let zeikomi = Int(Double(zeinuki) * (1.0 + zeiritu * 0.01))
        zeikomiLabel.text = String(zeikomi)
        UserDefaults.standard.set(Int(zeiritu), forKey: keyZeiritu)
    }
}
