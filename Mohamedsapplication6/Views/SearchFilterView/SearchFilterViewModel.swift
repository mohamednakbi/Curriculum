import Foundation
import SwiftUI

class SearchFilterViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var group2482RangeSlider: ClosedRange<Float> = 0.0 ... 0.0
    @Published var checkedCheckbox: Bool = false
    @Published var checkedOneCheckbox: Bool = false
    @Published var uncheckedCheckbox: Bool = false
    @Published var checkedTwoCheckbox: Bool = false
    @Published var uncheckedOneCheckbox: Bool = false
    @Published var checkedThreeCheckbox: Bool = false
    @Binding var isOpen: Bool

    init(_isOpen: Binding<Bool>) {
        self._isOpen = _isOpen
    }
}
