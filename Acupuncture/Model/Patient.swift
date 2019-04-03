//
//  Patient.swift
//  Acupuncture
//
//  Created by Gustavo Quenca on 31/03/19.
//  Copyright © 2019 Quenca. All rights reserved.
//

import Foundation

class Patient {
    let id: Int
    let name: String
    let birthday: String
    let street: String
    let neighborhood: String
    let houseNumber: String
    let phoneNumber: Int
    let city: String
    let state: String
    let findMeHow: String
    let treatment: [Treatment]
    
    init(id: Int, name: String, birthday: String, street: String, neighborhood: String, houseNumber: String, phoneNumber: Int, city: String, state: String, findMeHow: String, treatment: [Treatment]) {
        self.id = id
        self.name = name
        self.birthday = birthday
        self.street = street
        self.neighborhood = neighborhood
        self.houseNumber = houseNumber
        self.phoneNumber = phoneNumber
        self.city = city
        self.state = state
        self.findMeHow = findMeHow
        self.treatment = treatment
    }
}
