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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //segue for adding
//        let tabBar : UITabBarController = segue.destination as! UITabBarController
//        let nav = tabBar.viewControllers![1] as! UINavigationController
//        let itinVC = nav.topViewController as! SymptomsListViewController
//        itinVC.onSave = onSave
    }
    
    //example of completion block for data transfer !!
    //no longer in use after implementation of firebase for data persistence
    func onSave(_ selectedSymptom : String) -> () {
        
        
        //        DataModel.sharedInstance.addCourse(course: course)
        //        let indexPath = IndexPath(row: DataModel.sharedInstance.numberOfCourses() - 1, section: 0)
        //        print("how many images? : \(course.images.count)")
        //        tableView.beginUpdates()
        //        tableView.insertRows(at: [indexPath], with: .automatic)
        //        tableView.endUpdates()
    }


}

