
import Foundation
import Alamofire

public class DeleteUserManagerImpl: DeleteUserManager {
    
    public func deleteUser (id: Int) {
        let url = "http://hello-world.innocv.com/api/user/remove/"+"\(id)"
        let headers = [ "Content-Type" : "application/json"]
        Alamofire.request(url, method: .delete, parameters: nil, encoding: JSONEncoding.default, headers: headers).responseJSON { (response) in
            switch response.result {
            case .success:
                print("Exito")
            case .failure:
                print("cagada")
            }
        }
    }
}
