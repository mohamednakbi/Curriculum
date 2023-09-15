import Foundation
import SwiftUI

class EditProfileViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var statusfilltypedText: String = ""
    @Published var firstnameText: String = ""
    @Published var dobText: String = ""
    @Published var emailText: String = ""
    @Published var countryPicker1: String = "Option 1"
    @Published var countryPicker1Values: [String] = ["Option 1", "Option 2", "Option 3"]
    @Published var phonenumberText: String = ""
    @Published var genderPicker1: String = "Option 1"
    @Published var genderPicker1Values: [String] = ["Option 1", "Option 2", "Option 3"]
    @Published var isLoaderShow: Bool = false
}
