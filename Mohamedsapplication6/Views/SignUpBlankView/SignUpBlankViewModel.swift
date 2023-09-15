import Foundation
import SwiftUI

class SignUpBlankViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var emailText: String = ""
    @Published var passwordText: String = ""
    @Published var uncheckedCheckbox: Bool = false
    @Published var facebookSignInResponse: FacebookSignInResponse?
    @Published var googleSignInResponse: GoogleSignInResponse?

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
}
