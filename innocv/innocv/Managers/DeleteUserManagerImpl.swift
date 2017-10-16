
import Foundation
import Alamofire

public class DeleteUserManagerImpl: DeleteUserManager {
    
    public func deleteUser (id: Int) {

        //MARK: - Delete user using  HTTP request
        
        Alamofire.request(ApiDeleteURL + "\(id)", method: .get, parameters: nil, encoding: JSONEncoding.default, headers: HTTP_HEADERS).responseJSON { (response) in
            
            if response.response?.statusCode == 200 {
                
                NotificationCenter.default.post(name: Notification.Name(rawValue: UpdateNotification), object: self)
            } else {
                 print("Error deleting User")
            }
        }
    }
}
