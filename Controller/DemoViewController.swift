//
//  DemoViewController.swift
//  CoreDataDemo
//
//  Created by Pawan  on 18/10/2020.
//

import UIKit

class DemoViewController: UIViewController {

   
    @IBOutlet weak var aridno: UITextField!
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var city: UITextField!
    
    @IBOutlet weak var mobile: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func saveButtonTapped(_ sender: UIButton) {
        var dict = ["aridNo": aridno.text!, "name": name.text!, "mobile":mobile.text!, "city":city.text!]
        DataBaseHelper.shareClass.save(Object: dict as! [String:String])
    }
}
