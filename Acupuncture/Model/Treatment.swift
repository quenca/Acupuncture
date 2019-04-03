//
//  Treatment.swift
//  Acupuncture
//
//  Created by Gustavo Quenca on 31/03/19.
//  Copyright © 2019 Quenca. All rights reserved.
//

import Foundation

class Treatment {
    let id: Int
    let name: String
    let description: String
    let rating: Int
    let symptom: Symptom
    
    init(id: Int, name: String, description: String, rating: Int, symptom: Symptom) {
        self.id = id
        self.name = name
        self.description = description
        self.rating = rating
        self.symptom = symptom
    }
}
