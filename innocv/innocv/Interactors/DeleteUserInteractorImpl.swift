
import Foundation

public class DeleteUserInteractorImpl: DeleteUserInteractor {
    
    let deleteUserManager: DeleteUserManagerImpl
    
    public init(deleteUserManager: DeleteUserManagerImpl) {
        self.deleteUserManager = deleteUserManager
    }
    
    public func execute(id: Int, completion: @escaping (String) -> Void) {
        deleteUserManager.deleteUser(id: id) { message in
            completion(message)
        }
    }
}
