
import Foundation

public protocol GetAllUsersFromAPIManager {
    func downloadAllUsers(completion: @escaping ([User]) -> Void)
}
