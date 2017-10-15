
import Foundation
import Alamofire

public class DeleteUserManagerImpl: DeleteUserManager {
    
    public func deleteUser (id: Int) {

        Alamofire.request(ApiDeleteURL + "\(id)", method: .get, parameters: nil, encoding: JSONEncoding.default, headers: HTTP_HEADERS).responseJSON { (response) in
            
            if response.response?.statusCode == 200 {
                print("Exito")
                NotificationCenter.default.post(name: Notification.Name(rawValue: UpdateNotification), object: self)
            } else {
                 print("cagada")
            }
        }
    }
}
