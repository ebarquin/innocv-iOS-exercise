
import Foundation
import Alamofire

public class DeleteUserManagerImpl: DeleteUserManager {
    
    public func deleteUser (id: Int) {

        Alamofire.request(API_DELETE_URL + "\(id)", method: .get, parameters: nil, encoding: JSONEncoding.default, headers: HTTP_HEADERS).responseJSON { (response) in
            switch response.result {
            case .success:
                print("Exito")
            case .failure:
                print("no se ha podido borrar")
            }
        }
    }
}
