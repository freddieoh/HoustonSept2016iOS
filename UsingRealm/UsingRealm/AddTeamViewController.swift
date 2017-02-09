//
//  AddTeamViewController.swift
//  UsingRealm
//
//  Created by Fredrick Ohen on 11/20/16.
//  Copyright © 2016 geeoku. All rights reserved.
//

import UIKit
import Realm
import RealmSwift

protocol AddTeamDelegate {
    func userDidAddTeam(team: Team)

}

class AddTeamViewController: UIViewController {
    
    var delegate: AddTeamDelegate? = nil
    @IBOutlet weak var addTeamTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func saveTeamButtonPressed() {
        if delegate != nil {
            if addTeamTextField != nil {
                let team = addTeamTextField.text
                let newTeam = Team()
                newTeam.name = team!
                delegate?.userDidAddTeam(team: newTeam)
                dismiss(animated: true, completion: nil)
                
            }
        }
        
        
    }
}
