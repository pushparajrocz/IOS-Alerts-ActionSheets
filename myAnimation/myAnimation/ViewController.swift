//
//  ViewController.swift
//  myAnimation
//
//  Created by Pushparaj Selvam on 30/11/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var btn: UIButton!
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        btn.backgroundColor = UIColor(red: 0.98, green: 0.88, blue: 0.68, alpha: 1.00)
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = 4
    }
    @IBAction func myAlert(_ sender: Any) {
        var style:UIAlertController.Style?
        switch count{
            case 0:
                style = UIAlertController.Style.actionSheet
                count = 1
            default:
                style = UIAlertController.Style.alert
                count = 0
        }
        let alert = UIAlertController(title: "Warning !", message: "Change Button Color", preferredStyle: style!)
        let act1 = UIAlertAction(title: "#03506f", style: .default){ _ in
            self.btn.backgroundColor = UIColor(red: 0.01, green: 0.31, blue: 0.44, alpha: 1.00)
        }
        let act2 = UIAlertAction(title: "#0a043c", style: .default){ _ in
            self.btn.backgroundColor = UIColor(red: 0.04, green: 0.02, blue: 0.24, alpha: 1.00)
        }
        
        alert.addAction(act1)
        alert.addAction(act2)
        
        present(alert, animated: true, completion: nil)
    }
}


