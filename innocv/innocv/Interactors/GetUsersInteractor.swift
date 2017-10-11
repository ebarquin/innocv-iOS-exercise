

import Foundation
public protocol GetUsersInteractor {
    func execute(completion: @escaping (Users) -> Void)
}
