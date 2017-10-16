
import Foundation

public class GetAllUsersFromAPIManagerFakeImpl {
    
    
    var users = [
                 User(id:1234, name:"Manuel", birthdate: Date())
                ,User(id: 3456, name: "Maria", birthdate: Date())
                ,User(id: 4895, name: "Carlos", birthdate: Date())]
    
    public func downloadAllUsers(completion: @escaping (Users) -> Void) {
        completion(users)
    }
    

}
