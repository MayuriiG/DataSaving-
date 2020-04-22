//
//  ViewController.swift
//  UserDefaults#3
//
//  Created by Mayurii Gajbhiye on 13/04/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.



//NsUserDefaults- (<100kb)data -store simple data,boolean,string,Int,Double,array,dict
//it store the values as long as the app is installed
//key Value pair

import UIKit



class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource
{
  
    
    @IBOutlet weak var toolbr: UIToolbar!
    
    @IBOutlet weak var pickerViewTag: UIPickerView!//give datasource,delegate in storyboard
    
    @IBOutlet weak var lbl: UILabel!
    
    var arryData = ["Triveni","Nest","MadhurWifi","LAxmiWifi","ImageHospital","MadhapurMetroStation","Mamta","Redmi","LoveVodaphone","insane","Note5"]
  
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
        self.pickerViewTag.delegate  = self
        self.pickerViewTag.dataSource = self
      
        self.pickerViewTag.isHidden  = true
        self.toolbr.isHidden = true
      
        
        if  let x = UserDefaults.standard.object(forKey: "Wifi") as? String{
            lbl.text = x 
        }
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
          return 1
      }
    
      
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arryData.count
      }
    

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.arryData[row]
    }
    
    
    @IBAction func btnAction(_ sender: UIButton) {
        //open pickerview.........
        self.pickerViewTag.isHidden = false
        self.toolbr.isHidden = false
    }
    
    
    @IBAction func doneAction(_ sender: Any) {
        //Done button................
        
        
        
    //key .............
    self.lbl.text = self.arryData[self.pickerViewTag.selectedRow(inComponent: 0)]
        
        self.pickerViewTag.isHidden = true
        self.toolbr.isHidden = true
  
    
        //setValue(self.lbl.text!,value(forKey: "WIfi"))
    
        UserDefaults.standard.set(lbl, forKey: "Wifi")
        
        
    }
    
}

//let myData = NSKeyedArchiver.archivedData(withRootObject: myJson)
//UserDefaults.standard.set(myData, forKey: "userJson")
//
//let recovedUserJsonData = UserDefaults.standard.object(forKey: "userJson")
//let recovedUserJson = NSKeyedUnarchiver.unarchiveObject(with: recovedUserJsonData)

