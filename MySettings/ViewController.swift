//
//  ViewController.swift
//  MySettings
//
//  Created by Prathamesh Pawar on 8/24/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    var settingsOptions = [
        ["Airplane Mode", "Wi-fi", "Bluetooth",  "Mobile Service", "Battery"],
        ["General", "Accessibility", "Action Buttton", "Apple Intelligence & Siri", "Camera", "Control Centre", "Display & Brightness", "Home Screen & App Library", "Search", "StandBy", "Wallpaper"],
        ["Notifications", "Sounds & Haptics", "Foccus", "Screen Time"],
        ["Face ID & Passcode", "Emergency SOS", "Privacy and Security"]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Settings"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

     func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50.0
    }
    
    // Number of sections :- Number of Arrays in Array
     func numberOfSections(in tableView: UITableView) -> Int {
        return settingsOptions.count
    }
    
    //Number of Rows :- Number of all elements in all arrays
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingsOptions[section].count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = settingsOptions[indexPath.section][indexPath.row]
        return cell
    }
    
     func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
           case 0:
               return "NETWORK"
           case 1:
               return "GENERAL SETTINGS"
           case 2:
               return "INFORMATION"
           case 3:
               return "APPS"
           default:
               return "PRIVACY"
           }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as! DetailViewController
        vc.selectedSetting = settingsOptions[indexPath.section][indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}

