//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

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

print("Hello")


loadCharacters()




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
        
        let json = try! JSONSerialization.jsonObject(with: data!, options: []) as! [[String:Any]]
        
        
        print(json)
        
        
        for userDictionary in json {
            
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






