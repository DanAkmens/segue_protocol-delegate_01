//
//  ViewController.swift
//  Segue_passing_data_4
//
//  Created by dainis.putans on 15/04/2019.
//  Copyright © 2019 dainis.putans. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CanReceive {
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func changeToBlue(_ sender: Any) {
        
        view.backgroundColor = UIColor.blue
        
    }
    

    @IBAction func buttonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "sendDataForwards", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataForwards" {
            
            let destinationVC = segue.destination as! SecondViewController
            
            destinationVC.textPassedOver = textField.text!
            
            destinationVC.delegate = self
        }
    }
    
    func dataReceived(data: String) {
        label.text = data
    }
    
    
}

