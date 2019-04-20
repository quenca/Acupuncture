//
//  ViewController.swift
//  Acupuncture
//
//  Created by Gustavo Quenca on 31/03/19.
//  Copyright © 2019 Quenca. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
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
            Rows(title: "Paciente", subTitle: "Idade"),
            Rows(title: "Sintoma", subTitle: "Dor na coluna"),
            Rows(title: "Tratamento", subTitle: "C4 + 2D")
        ]
    }
    
    @IBAction func addSession(_ sender: UIButton) {
        
    }
    
}

extension MenuViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell") as! MenuTableViewCell
        
        cell.firstLabel.text = tableData[indexPath.row].title
        cell.secondLabel.text = tableData[indexPath.row].subTitle
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            self.performSegue(withIdentifier: "showPatient", sender: indexPath);
        } else if indexPath.row == 1 {
            self.performSegue(withIdentifier: "showSymptom", sender: indexPath);
        } else if indexPath.row == 2 {
            self.performSegue(withIdentifier: "showTreatment", sender: indexPath);
        }
    }
    
}
