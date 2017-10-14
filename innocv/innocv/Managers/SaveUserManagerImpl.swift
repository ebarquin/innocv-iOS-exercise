
import Foundation
import Alamofire

public class SaveUserManagerImpl: SaveUserManager {
    
    public func saveUser (name: String, birthdate: String){
        
        let parametersObject = ["name": name, "birthdate": birthdate]
        Alamofire.request(API_SAVE_URL, method: .post, parameters: parametersObject, encoding: JSONEncoding.default, headers: HTTP_HEADERS).responseJSON { (response) in
            switch response.result {
            case .success:
                print("Exito")
            case .failure:
                print("cagada")
            }
        }
    }
}

