
import Foundation
import Alamofire

public class SaveUserManagerImpl: SaveUserManager {
    
    public func saveUser (name: String, birthdate: String, completion: @escaping (String) -> Void){
        
        let parametersObject = ["name": name, "birthdate": birthdate]
        Alamofire.request(ApiSaveURL, method: .post, parameters: parametersObject, encoding: JSONEncoding.default, headers: HTTP_HEADERS).responseJSON { (response) in
            switch response.result {
            case .success:
                print("Exito")
                completion ("Completo")
            case .failure:
                print("cagada")
            }
        }
    }
}

