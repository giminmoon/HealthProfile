//
//  HealthProfile.swift
//  HealthProfile
//
//  Created by Yuna Lee on 2/17/18.
//  Copyright © 2018 Gimin Moon. All rights reserved.
//

import Foundation

class HealthProfile {
    // Personal information
    var dateOfBirth : Date?
    var ethnicity : Ethnicity?
    var gender : Gender?
    
    // General conditions
    var height : Int = 0    // Inches
    var weight : Int = 0    // Pounds
    var bloodType : BloodType?
    var lastCheckUpDate : Date?
    
    // Current symptoms
    var symptoms : [Symptom] = []
    
    // Diagnoses
    
    // Medications
    
    // Allergies
    
    // Medical history
    
    // Social history
    var alcohol : Bool = false
    var tobacco : Bool = false
    var depression : Bool = false
    
}

enum Gender {
    case Male
    case Female
}

enum BloodType {
    case A
    case B
    case O
    case AB
}

enum Ethnicity {
    case Hispanic = "Hispanic or Latino"
    case White = "White"
    case Black = "Black or African American"
    case Indian = "American Indian or Alaska Native"
    case Asian = "Asian"
    case Islander = "Native Hawaiian or other Pacific Islander"
    case Multiracial = "Multiracial"
}
