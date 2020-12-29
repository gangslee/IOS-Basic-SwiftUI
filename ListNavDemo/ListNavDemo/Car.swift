//
//  Car.swift
//  ListNavDemo
//
//  Created by 이경수 on 2020/12/29.
//

import Foundation

struct Car : Codable, Identifiable {
    var id : String
    var name : String
    
    var description : String
    var isHybrid : Bool
    
    var imageName : String
}
