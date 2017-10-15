
import Foundation
import Alamofire

public class DeleteUserManagerImpl: DeleteUserManager {
    
    public func deleteUser (id: Int, completion: @escaping(String) -> Void) {

        Alamofire.request(ApiDeleteURL + "\(id)", method: .get, parameters: nil, encoding: JSONEncoding.default, headers: HTTP_HEADERS).response { (response) in
            
        }
    }
}
