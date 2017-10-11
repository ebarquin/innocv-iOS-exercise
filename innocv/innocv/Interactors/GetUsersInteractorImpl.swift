
import Foundation

public class GetUsersInteractorImpl: GetUsersInteractor {
    
    let getAllUsersFromAPIManager: GetAllUsersFromAPIManagerImpl
    
    public init(getAllUsersFromAPIManager: GetAllUsersFromAPIManagerImpl) {
        self.getAllUsersFromAPIManager = getAllUsersFromAPIManager
    }
    
    public func execute(completion: @escaping (Users) -> Void) {
        getAllUsersFromAPIManager.downloadAllUsers { (users) in
            completion(users)
            
        }
    }
}
