
import Foundation

public class GetUserInteractorImpl: GetUserInteractor {
    
    let getUserManager: GetUserManagerImpl
    
    public init(getUserManager: GetUserManagerImpl) {
        self.getUserManager = getUserManager
    }
    
    public func execute (id: Int, completion: @escaping (User) -> Void) {
        getUserManager.downloadUser(id: id) { (user) in
            completion(user)
        }
    }
}
