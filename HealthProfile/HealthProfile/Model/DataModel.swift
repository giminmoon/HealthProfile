//
//  DataModel.swift
//  HealthProfile
//
//  Created by Gimin Moon on 2/17/18.
//  Copyright © 2018 Gimin Moon. All rights reserved.
//

import Foundation

//
//  DataModel.swift
//  DateCourse
//
//  Created by Gimin Moon on 11/24/17.
//  Copyright © 2017 Gimin Moon. All rights reserved.
//

import UIKit

class DataModel{
    
    static let sharedInstance = DataModel()
    
    //array with all the date courses
    var symptoms : [String] = []

    init() {
    }
    
    func addSymptoms(symptom: String){
        self.symptoms.append(symptom)
    }
    func numberOfSymptoms()->Int{
        return symptoms.count
    }
}
