//
//  Address.swift
//  MapKitApp
//
//  Created by kauekaj on 7/2/22.
//

import Foundation
import Contacts
import CoreLocation

struct Address {
    var name: String
    var placemark: CLPlacemark
    var postalAdress: CNPostalAddress
    
    init(name: String, placemark: CLPlacemark, postalAddress: CNPostalAddress) {
        self.name = name
        self.placemark = placemark
        self.postalAdress = postalAddress
    }
}
