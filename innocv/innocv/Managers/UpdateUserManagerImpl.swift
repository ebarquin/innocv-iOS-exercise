
import Foundation
import Alamofire

public class UpdateUserManagerImpl: UpdateUserManager {
    
    public func updateUser (id: Int, name: String, birthdate: String) {
        let url = "http://hello-world.innocv.com/api/user/update"
        let headers = [ "Content-Type" : "application/json"]
        let parametersObject = ["id": "\(id)", "name": name, "birthdate": birthdate]
        Alamofire.request(url, method: .post, parameters: parametersObject, encoding: JSONEncoding.default, headers: headers).responseJSON { (response) in
            switch response.result {
            case .success:
                print("Exito")
            case .failure:
                print("cagada")
            }
        }
        
    }
}
