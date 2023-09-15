import Foundation
import SwiftUI

class FilterResultViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var searchbar: String = ""
}
