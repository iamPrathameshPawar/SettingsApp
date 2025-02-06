//
//  DetailViewController.swift
//  MySettings
//
//  Created by Prathamesh Pawar on 2/6/25.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var myLabel: UILabel!
    var selectedSetting: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Selected"
        navigationController?.navigationBar.prefersLargeTitles = false
        
        
        myLabel.text = selectedSetting
        myLabel.clipsToBounds = true
        myLabel.layer.cornerRadius = 19.0
        
       
        
        let tapRecongniser = UITapGestureRecognizer(target: self, action: #selector(lableTapped))
        myLabel.isUserInteractionEnabled = true
        myLabel.addGestureRecognizer(tapRecongniser)
    }
    
    @objc func lableTapped() {
        print("Tapped \(selectedSetting) lable.")
    }
    
    
}
