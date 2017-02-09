//: Playground - noun: a place where people can play


import UIKit
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true
class Geo {
    var latitude :String!
    var longitude :String!
}
class Address {
    var street :String!
    var city :String!
    var zipCode :String!
    var geo :Geo!
}
class User {
    
    var id :Int!
    var name :String!
    var email :String!
    var address :Address!
}
func savePost() {
    
    let url = "http://jsonplaceholder.typicode.com/posts"
    
    let postURL = URL(string: url)!
    
    var request = URLRequest(url: postURL)
    request.httpMethod = "POST"
    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
    
    let dataToPost = ["title":"self.titleTextField.text","body":"Learning iOS","userId":100] as [String : Any]
    
    request.httpBody = try! JSONSerialization.data(withJSONObject: dataToPost, options: .prettyPrinted)
    
    URLSession.shared.dataTask(with: request) { (data, _, _) in
        
        let json = try! JSONSerialization.jsonObject(with: data!, options: [])
        
        print(json)
        
        }.resume()
}
savePost()
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
            
            let addressDictionary = userDictionary["address"] as! [String:Any]
            
            user.address = Address()
            user.address.street = addressDictionary["street"] as! String
            
            let geoDictionary = addressDictionary["geo"] as! [String:Any]
            
            user.address.geo = Geo()
            user.address.geo.latitude = geoDictionary["lat"] as! String!
            
            // add user to the users array
            users.append(user)
            
        }
        
        print(users)
        
        
        let usersFiltered = users.filter { user in
            return user.id == 1
        }
        
        print(usersFiltered)
        
        
        }.resume()
    
}
// get all users
loadUsers()
