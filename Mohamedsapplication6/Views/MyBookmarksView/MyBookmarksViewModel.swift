import Foundation
import SwiftUI

class MyBookmarksViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isBookmarkremovalViewShow: Bool = false
}
