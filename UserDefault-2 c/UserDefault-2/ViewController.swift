//
//  ViewController.swift
//  UserDefault-2
//
//  Created by Mayurii Gajbhiye on 01/04/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.
//
//to save data on local device
//No need to save data again & again
import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var txtfield: UITextField!
    
    @IBOutlet weak var lbl: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    
    override func viewDidAppear(_ animated: Bool) {
        if let x = UserDefaults.standard.object(forKey: "name") as? String{
            
            lbl.text = x
        }
        
    }
    
    
    @IBAction func saveActionBtn(_ sender: Any) {
        lbl.text = txtfield.text
        UserDefaults.standard.set(txtfield.text, forKey: "name")
        txtfield.text = ""
 
    }
    
}

