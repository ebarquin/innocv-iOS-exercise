

import Foundation

public class UpdateUserInteractorImpl: UpdateUserInteractor {
    let updateUserManager: UpdateUserManagerImpl
    
    public init (updateUserManager:UpdateUserManagerImpl) {
        self.updateUserManager = updateUserManager
    }
    
    public func execute(id: Int, name: String, birthdate: Date) {
        updateUserManager.updateUser(id: id, name: name, birthdate: birthdate)
    }
    
}
