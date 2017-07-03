//
//  DataService.swift
//  Authorize
//
//  Created by Praneeth Kandula on 6/27/17.
//  Copyright © 2017 Praneeth Kandula. All rights reserved.
//

import Foundation
import Firebase
import FirebaseDatabase
import KeychainSwift

let DB_BASE = Database.database().reference()

class DataService{
    private var _keyChain = KeychainSwift()
    private var _refDatabase = DB_BASE
    
    var keyChain: KeychainSwift {
        get {
            return _keyChain
        } set {
            _keyChain = newValue
        }
        
    }
    
}
