//
//  SharedPinInformation.swift
//  VirtualTourist1
//
//  Created by Manish raj(MR) on 20/12/21.
//

import Foundation
import UIKit

//pin information singleton
class Sharedinfo {
    static let sharedInstance = Sharedinfo()
    var info = pinInfo()
}

//picture array singleton
class FlickrArray {
    static let sharedInstance = FlickrArray()
    var array = [UIImage]()
}

struct pinInfo {
    var locationName = String()
    var latitude = Double()
    var longitude = Double()
    
    init() {
        locationName = ""
        latitude = 0.0
        longitude = 0.0
    }
}
