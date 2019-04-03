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
    let patient: Patient
    let date: Date
    
    init(number: Int, patient: Patient, date: Date) {
        self.number = number
        self.patient = patient
        self.date = date
    }
}
