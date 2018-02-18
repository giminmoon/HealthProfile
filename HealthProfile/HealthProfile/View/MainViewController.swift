//
//  ViewController.swift
//  HealthProfile
//
//  Created by Gimin Moon on 2/16/18.
//  Copyright © 2018 Gimin Moon. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let MedicController = APIMedicController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("in main")
        MedicController.getSymptoms { (list) in
            DataModel.sharedInstance.symptoms = list!
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    @IBAction func addSymptoms(_ sender: Any) {
//        prepare(for: UIStoryboardSegue., sender: <#T##Any?#>)
//    }
}

protocol MainPageDelegate {
    func getSelectedSymptom(symptom: String)->String
}

