import Foundation
import SwiftUI

class LetsYouInViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var facebookSignInResponse: FacebookSignInResponse?
    @Published var googleSignInResponse: GoogleSignInResponse?

    func facebookSignIn() {
        FBSignInHelper.shared.signIn(user: { response in
            if let response = response {
                self.onSuccessFacebookSignIn(response: response)
            } else {
                self.onErrorFacebookSignIn()
            }
        })
    }

    func onSuccessFacebookSignIn(response: facebookSignIn) {
        self.facebookSignIn = response
    }

    func onErrorFacebookSignIn() {}

    func googleSignIn() {
        GoogleSignInHelper.shared.signIn(completion: { response in
            if let response = response {
                self.onSuccessGoogleSignIn(response: response)
            } else {
                self.onErrorGoogleSignIn()
            }
        })
    }

    func onSuccessGoogleSignIn(response: googleSignIn) {
        self.googleSignIn = response
    }

    func onErrorGoogleSignIn() {}
}
