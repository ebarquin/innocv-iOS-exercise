
import Foundation
import Alamofire
import SwiftyJSON

public class SaveUserManagerImpl: SaveUserManager {
    public func saveUser (name: String, birthdate: String){
        let url = "http://hello-world.innocv.com/api/user/create"
        let headers = [ "Content-Type" : "application/json"]
        let parametersObject = ["name": name, "birthdate": birthdate]
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

