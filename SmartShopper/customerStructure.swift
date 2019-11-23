//
//  customerStructure.swift
//  SmartShopper
//
//  Created by Megha Mahna on 2019-11-18.
//  Copyright © 2019 meghamahna. All rights reserved.
//

import Foundation


//MARK:- customer struct
// this struct has three properties ,all of these are strings.

struct Customer {
    var username: String
    var password: String
    var email: String
}


//here is an array of type of that customer struct
//it will store the data for username,password and email.
//this is being used to store the credientials of user,to make him able to be registered and login by using that credientials
var customers = [Customer]()
