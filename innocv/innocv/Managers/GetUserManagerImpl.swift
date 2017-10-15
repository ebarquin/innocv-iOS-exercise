
import Foundation
import Alamofire
import SwiftyJSON

public class GetUserManagerImpl: GetUserManager {
    
    public func downloadUser( id: Int, completion: @escaping (User) -> Void) {
        let parametersObject = ["id" : id]

        Alamofire.request(API_DELETE_URL + "\(id)", method: .get, parameters: parametersObject, encoding: JSONEncoding.default, headers: HTTP_HEADERS).responseJSON { (response) in
            switch response.result {
            case .success:
                if let value = response.result.value {
                    let json = JSON(value)
                    let id = json["id"].intValue
                    let name = json["name"].stringValue
                    let birthdateJSON = json["birthdate"].stringValue
                    let birthdate = Date.dateFormat(string: birthdateJSON)
                    
                    let user = User(id: id, name: name, birthdate: birthdate)
                    
                    completion(user)

                }
            case .failure:
                print("Cagada")
            }
        }
       
            
        
    }
}

