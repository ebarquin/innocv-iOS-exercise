
import Foundation

//MARK: - TypeAliasses
public typealias Users = [User]
public typealias ErrorClosure = (Error) -> Void


//MARK: - Config

public let CELL_IDENTIFIER = "cellId"
public let HTTP_HEADERS = [ "Content-Type" : "application/json"]

//MARK: - Endpoints
public let ApiURL = "http://hello-world.innocv.com/api/user/getall"
public let ApiSaveURL = "http://hello-world.innocv.com/api/user/create"
public let ApiDeleteURL = "http://hello-world.innocv.com/api/user/remove/"
public let ApiUpdateURL = "http://hello-world.innocv.com/api/user/update"
public let ApiCreateURL = "http://hello-world.innocv.com/api/user/create"

//MARK: - Notifications
public let UpdateNotification = "UpdateNotification"
