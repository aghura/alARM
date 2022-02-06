//
//  ViewControllerFour.swift
//  alARM
//
//  Created by Simran Lekhwani on 2/6/22.
//

//import DropDown
import UIKit


class AddAnAlarm: UIViewController {
    
//    var intensity: DropDown {
//        intensity.dataSource = [
//            "1",
//            "2",
//            "3",
//            "4",
//            "5",
//        ]
//
//        return menu
//    }
    
    @IBOutlet weak var outlet: UILabel!
    
    @IBAction func action(_ sender: Any) {
        number = outlet.text!
    }

    
    
//    @objc func didTapItem() {
//        intensity.show()
//    }


}
