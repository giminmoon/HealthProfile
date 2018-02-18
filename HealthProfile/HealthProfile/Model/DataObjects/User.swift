//
//  User.swift
//  HealthProfile
//
//  Created by Gimin Moon on 2/17/18.
//  Copyright © 2018 Gimin Moon. All rights reserved.
//

import Foundation

class User {
    // Account information
    var firstName : String = ""
    var lastName : String = ""
    var email : String = ""
    
    // Health information
    var healthProfile : HealthProfile?
    
    // Sharing information
    var sharedList: [User] = []
    var sharingList: [User] = []
}

func getFullName() {
    let fullName = firstName + " " + lastName
    return fullName
}
