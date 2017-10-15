
import Foundation

public protocol SaveUserInteractor {
     func execute(name: String, birthdate: String, completion: @escaping (String) -> Void)
}
