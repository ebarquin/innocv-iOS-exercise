
import Foundation

public class SaveUserInteractorImpl: SaveUserInteractor{
    
    let saveUserManager: SaveUserManagerImpl
    
    public init(saveUserManager: SaveUserManagerImpl) {
        self.saveUserManager = saveUserManager
    }
    
    public func execute(name: String, birthdate: String, completion: @escaping (String) -> Void) {
        saveUserManager.saveUser(name: name, birthdate: birthdate) { message in
            completion(message)
        }
    }
    
}


