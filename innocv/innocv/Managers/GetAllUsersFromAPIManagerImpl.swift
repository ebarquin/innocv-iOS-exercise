
import Foundation
import Alamofire
import SwiftyJSON

public class GetAllUsersFromAPIManagerImpl: GetAllUsersFromAPIManager {
    
    public func downloadAllUsers(completion: @escaping (Users) -> Void) {
        Alamofire.request(ApiURL, method: .get).validate().responseJSON { (response) in

            switch response.result {
            case .success:
                if let value = response.result.value {
                    let json = JSON(value)
                    let users = self.decode(json: json)
                    completion(users)
                    
                }

            case.failure:
                print("Error downloading the user")
                
            }
        }
    }
    
    func decode (json: JSON) -> Users {
        let entries = json.arrayValue
        
        var users = Users()
        
        for entry in entries {
            let id = entry["id"].intValue
            let name = entry["name"].stringValue
            let birthdateJSON = entry["birthdate"].stringValue
            let birthdate = Date.dateFormat(string: birthdateJSON)
            
            
            let user = User(id: id, name: name, birthdate: birthdate)
            users.append(user)
        }
        return users
    }

}


