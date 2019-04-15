//
//  SecondViewController.swift
//  Segue_passing_data_4
//
//  Created by dainis.putans on 15/04/2019.
//  Copyright © 2019 dainis.putans. All rights reserved.
//

import UIKit

protocol CanReceive {
    func dataReceived(data: String)
}

class SecondViewController: UIViewController {
    
    var delegate : CanReceive?
    
    var textPassedOver : String?
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = textPassedOver
        
    }
    

    @IBAction func sendDataBack(_ sender: Any) {
        
        delegate?.dataReceived(data: textField.text!)
        dismiss(animated: true, completion: nil)
        
    }
    

}
