import Foundation
import SwiftUI

class ChoosePaymentMethodViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
}
