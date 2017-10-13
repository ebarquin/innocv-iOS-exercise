

import Foundation

public protocol UpdateUserInteractor {
    
    func execute(id: Int, name: String, birthdate: Date)
}
