
import Foundation
import Alamofire

public class UpdateUserManagerImpl: UpdateUserManager {
    
    public func updateUser (id: Int, name: String, birthdate: Date) {
        
        let birthdateString = Date.backendFormat(date: birthdate)
        
        //MARK: - Update user using  HTTP request
        
        let parametersObject = ["id": "\(id)", "name": name, "birthdate": birthdateString] as [String : Any]
        Alamofire.request(ApiUpdateURL, method: .post, parameters: parametersObject, encoding: JSONEncoding.default, headers: HTTP_HEADERS).responseJSON { (response) in
            switch response.result {
            case .success:
                NotificationCenter.default.post(name: Notification.Name(rawValue: UpdateNotification), object: self)

            case .failure:
                
                print("Error updating user")
            }
        }
    }
}
