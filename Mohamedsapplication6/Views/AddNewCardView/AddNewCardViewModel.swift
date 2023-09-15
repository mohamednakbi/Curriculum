import Foundation
import SwiftUI

class AddNewCardViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var cardholdernameText: String = ""
    @Published var cardnumberText: String = ""
    @Published var expirydateText: String = ""
    @Published var cvvText: String = ""
}
