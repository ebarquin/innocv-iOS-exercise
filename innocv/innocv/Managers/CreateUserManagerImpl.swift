
import Foundation
import Alamofire

public class CreateUserManagerImpl: CreateUserManager {
    
    public func createUser (name: String, birthdate: Date, completion: @escaping (String) -> Void) {
        
        let birthdayString = Date.backendFormat(date: birthdate)
    
        let parametersObject = ["name": name, "birthdate": birthdayString]
        Alamofire.request(API_CREATE_URL, method: .post, parameters: parametersObject, encoding: JSONEncoding.default, headers: HTTP_HEADERS).responseJSON { (response) in
            switch response.result {
            case .success:
                completion("Usuario creado")
            case .failure:
                print("cagada")
            }
        }
    }
}
