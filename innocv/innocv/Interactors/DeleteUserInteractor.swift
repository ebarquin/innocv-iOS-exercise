
import Foundation

public protocol DeleteUserInteractor {
    func execute(id: Int, completion: @escaping (String) -> Void)
    
}
