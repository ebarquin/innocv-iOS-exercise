
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

//MARK: - LocalizedStrings

let alertInsertTitle = NSLocalizedString("Save user", comment:"")
let alertInsertMessage = NSLocalizedString("Do you want to save the user?", comment:"")
let alertDeleteTitle = NSLocalizedString("Delete user", comment:"")
let alertDeleteMessage = NSLocalizedString("Do you want to delete the user?", comment:"")
let alertCreateNoDataTitle = NSLocalizedString("Error", comment:"")
let alertCreateNoDataMessage = NSLocalizedString("Enter a valid name", comment:"")
let alertOK = NSLocalizedString("Ok", comment:"")
let alertCancel = NSLocalizedString("Cancel", comment:"")

