//
//  PatientViewController.swift
//  Acupuncture
//
//  Created by Gustavo Quenca on 07/04/19.
//  Copyright © 2019 Quenca. All rights reserved.
//

import UIKit

class PatientViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    struct Rows {
        var title: String
        var subTitle: String
    }
    
    var tableData: [Rows] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableData = [
            Rows(title: "Gustavo Quenca", subTitle: "32"),
            Rows(title: "Adriana Quenca", subTitle: "43"),
            Rows(title: "Willian", subTitle: "32"),
            Rows(title: "Felipe", subTitle: "13")
        ]
        
    }
}

extension PatientViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "patientCell") as! PatientTableViewCell
        
        cell.nameLabel.text = tableData[indexPath.row].title
        
        return cell
    }
}
