
import Foundation

public protocol DeleteUserManager {
    func deleteUser (id: Int, completion: @escaping(String) -> Void)
    
}
