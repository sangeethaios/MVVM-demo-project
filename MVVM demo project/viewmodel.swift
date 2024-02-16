//
//  viewmodel.swift
//  MVVM demo project
//
//  Created by Ardhas Dev on 16/02/24.
//

import Foundation
import Alamofire
import SwiftyJSON

class UsersViewModel {
    private var users: [User] = []
    
    func getUsers(completion: @escaping () -> Void) {
        let url = "https://jsonplaceholder.typicode.com/users"
        AF.request(url).responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                if let jsonArray = json.array {
                    self.users = jsonArray.compactMap { json in
                        User(id: json["id"].intValue,
                             name: json["name"].stringValue,
                             email: json["email"].stringValue,phone: json["phone"].stringValue)
                    }
                    completion()
                    print("Response data: \(response)")
                    
                }
            case .failure(let error):
                print("Error fetching data: \(error)")
            }
        }
    }
    
    func user(at index: Int) -> User {
        return users[index]
    }
    
    func numberOfUsers() -> Int {
        return users.count
    }
}
