
import Foundation

public class SaveUserInteractorImpl: SaveUserInteractor{
    
    let saveUserManager: SaveUserManagerImpl
    
    public init(saveUserManager: SaveUserManagerImpl) {
        self.saveUserManager = saveUserManager
    }
    
    public func execute(name: String, birthdate: String) {
        saveUserManager.saveUser(name: name, birthdate: birthdate)
    }
    
}


