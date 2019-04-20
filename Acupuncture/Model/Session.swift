//
//  Session.swift
//  Acupuncture
//
//  Created by Gustavo Quenca on 02/04/19.
//  Copyright © 2019 Quenca. All rights reserved.
//

import Foundation

class Session {
    let number: Int
    let description: String
    let patient: Patient
    let date: Date
    let treatment: Treatment
    
    init(number: Int, description: String, patient: Patient, date: Date, treatment: Treatment) {
        self.number = number
        self.description = description
        self.patient = patient
        self.date = date
        self.treatment = treatment
    }
}
