
import Foundation

struct CreateRegisterResponse: Codable {
    var data: CreateRegisterResponseData
    var message: String
    var status: String
}

struct CreateRegisterResponseData: Codable {
    var createdAt: String
    var email: String
    var id: String
    var isActive: Bool
    var isDeleted: Bool
    var loginRetryLimit: Int
    var name: String
    var password: String
    var profile: String
    var role: Int
    var updatedAt: String
    var username: String
}
