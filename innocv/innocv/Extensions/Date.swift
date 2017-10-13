
import Foundation

extension Date {
    
    static let BACKEND_FORMAT = "yyyy-MM-dd'T'00:00:00"
    
    static func backendFormat(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = BACKEND_FORMAT
        let dateString = dateFormatter.string(from: date)
        return dateString
    }
}
