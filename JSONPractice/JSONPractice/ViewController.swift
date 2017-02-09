//
//  ViewController.swift
//  JSONPractice
//
//  Created by Fredrick Ohen on 11/24/16.
//  Copyright © 2016 geeoku. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    class User {
        
        var id :Int!
        var name :String!
        var email :String!
        
    }
    
    class StarWars {
        
        var name: String!
        var height: String!
        var mass: String!
        var hair_color: String!
        
    }
    
    
    func loadCharacters() {
        
        let url = "http://swapi.co/api/people/1/"
        
        var starWars = [StarWars]()
        let charactersURL = URL(string: url)!
        
        URLSession.shared.dataTask(with: charactersURL){ (data, _, _) in
            
            let userDictionary = try! JSONSerialization.jsonObject(with: data!, options: []) as! [[String:Any]]
            
            
            for item in userDictionary {
                
                let starwar = StarWars()
                starwar.name = item["name"] as! String
                starwar.height = item["height"] as! String
                starwar.mass = item["mass"] as! String
                starwar.hair_color = item["hair_color"] as! String
                
                starWars.append(starwar)
                
                
            }
            
            print(starWars)
            
            }.resume()
        
        
    }
    func loadUsers() {
        
        let url = "https://jsonplaceholder.typicode.com/users"
        
        var users = [User]()
        
        let usersURL = URL(string: url)!
        
        URLSession.shared.dataTask(with: usersURL) { (data, _, _) in
            
            let usersArrayOfDictionaries = try! JSONSerialization.jsonObject(with: data!, options: []) as! [[String:Any]]
            
            for userDictionary in usersArrayOfDictionaries {
                
                let user = User()
                user.id = userDictionary["id"] as! Int
                user.name = userDictionary["name"] as! String
                user.email = userDictionary["email"] as! String
                
                
                
                // add user to the users array
                users.append(user)
                
            }
            
            print(users)
            
            
            
            
            }.resume()
        
    }

    
    
    
    
    
    
    

}

