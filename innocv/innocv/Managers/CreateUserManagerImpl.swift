
import Foundation
import Alamofire

public class CreateUserManagerImpl: CreateUserManager {
    
    public func createUser (name: String, birthdate: Date) {
        
        let birthdayString = Date.backendFormat(date: birthdate)
    
        let parametersObject = ["name": name, "birthdate": birthdayString]
        Alamofire.request(ApiCreateURL, method: .post, parameters: parametersObject, encoding: JSONEncoding.default, headers: HTTP_HEADERS).responseJSON { (response) in
            switch response.result {
            case .success:
                NotificationCenter.default.post(name: Notification.Name(rawValue: UpdateNotification), object: self)
            case .failure:
                print("Error creating user")
            }
        }
    }
}
