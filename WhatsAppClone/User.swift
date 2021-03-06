//
//  User.swift
//  WhatsAppClone
//
//  Created by Frezy Stone Mboumba on 7/21/16.
//  Copyright © 2016 Frezy Stone Mboumba. All rights reserved.
//

import Foundation
import Firebase
import FirebaseDatabase

struct User {
    
    var username: String!
    var email: String!
    var country: String!
    var photoURL: String!
    var biography: String!
    var uid: String!
    var ref: FIRDatabaseReference?
    var key: String
    
    init(snapshot: FIRDataSnapshot){
        
        key = snapshot.key
        ref = snapshot.ref
        username = snapshot.value!["username"] as! String
        email = snapshot.value!["email"] as! String
        country = snapshot.value!["country"] as! String
        biography = snapshot.value!["biography"] as! String
        photoURL = snapshot.value!["photoURL"] as! String
        uid = snapshot.value!["uid"] as? String

    }
    
    
    
    
    
    
    
}