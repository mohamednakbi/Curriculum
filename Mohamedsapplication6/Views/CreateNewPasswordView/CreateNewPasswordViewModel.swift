import Foundation
import SwiftUI

class CreateNewPasswordViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var confirmpasswordinputText: String = ""
    @Published var confirmpasswordinputoneText: String = ""
    @Published var checkedCheckbox: Bool = false
    @Published var isResetPasswordSuccessfulViewShow: Bool = false
}
