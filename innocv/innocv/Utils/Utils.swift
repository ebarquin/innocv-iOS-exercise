
import Foundation

//MARK: - TypeAliasses
public typealias Users = [User]
public typealias ErrorClosure = (Error) -> Void


//MARK: - Config

public let CELL_IDENTIFIER = "cellId"
public let HTTP_HEADERS = [ "Content-Type" : "application/json"]

//MARK: - Endpoints
public let API_URL = "http://hello-world.innocv.com/api/user/getall"
public let API_SAVE_URL = "http://hello-world.innocv.com/api/user/create"
public let API_DELETE_URL = "http://hello-world.innocv.com/api/user/remove/"
public let API_UPDATE_URL = "http://hello-world.innocv.com/api/user/update"
