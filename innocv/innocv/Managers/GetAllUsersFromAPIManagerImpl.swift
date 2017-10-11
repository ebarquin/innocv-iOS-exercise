
import Foundation
import Alamofire
import SwiftyJSON

public class GetAllUsersFromAPIManagerImpl: GetAllUsersFromAPIManager {
    
    public func downloadAllUsers(completion: @escaping ([User]) -> Void) {
        Alamofire.request("http://hello-world.innocv.com/api/user/getall", method: .get).validate().responseJSON { (response) in

            switch response.result {
            case .success:
                print("Exito")
                if let value = response.result.value {
                    let json = JSON(value)
                    
                    var users = [User]()
                    
                    for _ in json {
                        let id = json["id"].intValue
                        let name = json["name"].stringValue
                        let birthdayJSON = json["birthday"].stringValue
                        let birthday = self.convertDateFormatter(date: birthdayJSON)
                        
                        
                        let user = User(id: id, name: name, birthdate: birthday)
                        users.append(user)
                    }
                    completion(users)
                    
                }

            case.failure:
                print("Cagada")
            }
        }
    }
    
    func convertDateFormatter(date: String) -> Date {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"//this your string date format
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        let date = dateFormatter.date(from: date)
        if date != nil {
            return date!
        } else {
            let date = Date()
            //TODO IMPLEMENT TIMESTAMP
            return date
            
        }
        
        
    }

}




