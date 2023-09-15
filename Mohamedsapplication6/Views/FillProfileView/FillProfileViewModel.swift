import Foundation
import SwiftUI

class FillProfileViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var fullnameText: String = ""
    @Published var nicknameText: String = ""
    @Published var dateofbirthText: String = ""
    @Published var emailText: String = ""
    @Published var phonenumberText: String = ""
    @Published var genderPicker1: String = "Option 1"
    @Published var genderPicker1Values: [String] = ["Option 1", "Option 2", "Option 3"]
    @Published var isLoaderShow: Bool = false
}
