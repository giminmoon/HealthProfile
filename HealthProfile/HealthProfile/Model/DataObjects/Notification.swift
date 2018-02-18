//
//  Notification.swift
//  HealthProfile
//
//  Created by Yuna Lee on 2/17/18.
//  Copyright © 2018 Gimin Moon. All rights reserved.
//

import Foundation

class Notification {
    var sender : User?
    var notificationType : NotificationType?
    var firebaseController : FirebaseController()
    func getNotificationMessage() {
        let message = ""
        switch notificationType {
            case NotificationType.Welcome:
                message = "Welcome to My Health Profile, " + firebaseController.getCurrentUser().
            case NotificationType.SharedProfile:
                message = sender.getFullName() + "shared his profile with you."
        
        }
        return message
    }
}

enum NotificationType {
    case Welcome
    case SharedProfile
    
}
