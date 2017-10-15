
import Foundation

public class CreateUserInteractorImpl: CreateUserInteractor  {
    
    let createUserManager: CreateUserManagerImpl
    
    public init(createUserManager: CreateUserManagerImpl) {
        self.createUserManager = createUserManager
    }
    
    public func execute (name: String, birthdate: Date, completion: @escaping (String) -> Void) {
        createUserManager.createUser(name: name, birthdate: birthdate) { message in
            completion(message)
            
        }
        
    }
}
