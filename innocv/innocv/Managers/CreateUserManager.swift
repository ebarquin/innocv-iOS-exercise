

import Foundation

public protocol CreateUserManager {
    func createUser (name: String, birthdate: Date, completion: @escaping (String) -> Void)
}
