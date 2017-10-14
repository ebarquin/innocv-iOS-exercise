
import Foundation

public class CreateUserInteractorImpl: CreateUserInteractor {
    
    let createUserManager: CreateUserManagerImpl
    
    public init(createUserManager: CreateUserManagerImpl) {
        self.createUserManager = createUserManager
    }
    
    public func execute (name: String, birthdate: String) {
        createUserManager.createUser(name: name, birthdate: birthdate)
    }
}
