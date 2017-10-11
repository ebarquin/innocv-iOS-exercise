
import Foundation

public class User {
    let id: Int?
    let name: String?
    let birthdate: Date?
    
    init(id: Int, name: String, birthdate: Date) {
        self.id = id
        self.name = name
        self.birthdate = birthdate
    }
}

