
import Foundation

public protocol CreateUserInteractor {
    func execute (name: String, birthdate: Date, completion: @escaping (String) -> Void)
}
