
import Foundation

public protocol SaveUserManager {
   func saveUser (name: String, birthdate: String, completion: @escaping (String) -> Void)
}
