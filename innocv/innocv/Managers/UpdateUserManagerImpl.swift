
import Foundation
import Alamofire

public class UpdateUserManagerImpl: UpdateUserManager {
    
    public func updateUser (id: Int, name: String, birthdate: Date) {
        
        let birthdateString = Date.backendFormat(date: birthdate)
        
        let parametersObject = ["id": "\(id)", "name": name, "birthdate": birthdateString] as [String : Any]
        Alamofire.request(API_UPDATE_URL, method: .post, parameters: parametersObject, encoding: JSONEncoding.default, headers: HTTP_HEADERS).responseJSON { (response) in
            switch response.result {
            case .success:
                print("Exito")
            case .failure:
                print("cagada")
            }
        }
    }
}
