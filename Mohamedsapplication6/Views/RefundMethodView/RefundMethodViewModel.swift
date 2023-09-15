import Foundation
import SwiftUI

class RefundMethodViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isCancelationsuccessfulViewShow: Bool = false
}
