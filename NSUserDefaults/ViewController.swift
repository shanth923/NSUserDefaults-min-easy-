//
//  ViewController.swift
//  NSUserDefaults
//
//  Created by R Shantha Kumar on 1/10/20.
//  Copyright © 2020 R Shantha Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var datdasdf = userData()
    
    
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var mobileNumberTextField: UITextField!
    
    
    
    @IBAction func saveAction(_ sender: Any) {
        
     
        
        UserDefaults.standard.set(nameTextField.text!, forKey: "name")
         UserDefaults.standard.set(mobileNumberTextField.text!, forKey: "mobileNo")
        
            datdasdf.names = UserDefaults.standard.object(forKey: "name") as! String
            datdasdf.mobileNubmers = UserDefaults.standard.object(forKey: "mobileNo") as! String
        
        var datat = userData()
        
        do{
            var data1 = try JSONEncoder().encode(datdasdf)
            UserDefaults.standard.set(data1, forKey: "data123")
            print("saved")

        }catch{
            print("not saved")
        }
        
        
    }
    
    
    @IBAction func fetchACtion(_ sender: Any) {
        
    
        var documentFolderPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        
        print(documentFolderPath[0])
        
        var retrived = UserDefaults.standard.object(forKey: "data123")
      
        do{
            var convertedSAchin = try! JSONDecoder().decode(userData.self, from: retrived as! Data)
            
            print(convertedSAchin.names)
            print(convertedSAchin.mobileNubmers)
            
            
            
            
        }catch{
            
            print("not retrived")
        }
        
      
        
        
        
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

