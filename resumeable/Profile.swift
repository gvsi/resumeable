//
//  Profile.swift
//  resumeable
//
//  Created by Giovanni Alcantara on 24/05/2018.
//  Copyright © 2018 resumeable. All rights reserved.
//

import Foundation

class Profile {
    var name : String
    var email : String
    var phoneNumber : String
    var location : String
    var link : String
    var educationItems = [EducationItem]()
    
    func addEducationItem(item : EducationItem) {
        educationItems.append(item)
    }
    
    init(name : String, email : String, phoneNumber : String?, location : String?, link : String?) {
        self.name = name
        self.email = email
        self.phoneNumber = phoneNumber ?? ""
        self.location = location ?? ""
        self.link = link ?? ""
    }
    
}
