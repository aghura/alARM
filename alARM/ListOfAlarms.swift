//
//  ViewControllerThree.swift
//  alARM
//
//  Created by Simran Lekhwani on 2/6/22.
//

import UIKit
import SwiftUI

var number = ""

class ListOfAlarms: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    @IBOutlet var table: UITableView!
    
    @IBOutlet weak var tableLabel: UITableView!
    let list = number
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "alarm", for: indexPath)
        cell.textLabel?.text = "7:30 AM"
        //cell.textLabel?.text.textColor
        
        let mySwitch = UISwitch()
        mySwitch.addTarget(self, action: #selector(didChangeSwitch(_:)), for: .valueChanged)
        cell.accessoryView = mySwitch

        return cell
    }
    
    @objc func didChangeSwitch(_ sender: UISwitch) {
        if sender.isOn {
                print("Signal Sent")
        } else {
            print("Turned off")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}
