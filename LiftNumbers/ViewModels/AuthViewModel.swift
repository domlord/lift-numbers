import Foundation
import FirebaseAuth

@MainActor
class AuthViewModel: ObservableObject {

    @Published var user: User? = nil
    @Published var isLoading = false
    @Published var errorMessage = ""

    init() {
        Auth.auth().addStateDidChangeListener { [weak self] _, user in
            self?.user = user
        }
    }

    var isLoggedIn: Bool {
        return user != nil
    }

    func signUp(email: String, password: String, unit: WeightUnit) async {
        isLoading = true
        errorMessage = ""

        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            user = result.user
        } catch {
            errorMessage = error.localizedDescription
        }

        isLoading = false
    }

    func logIn(email: String, password: String) async {
        isLoading = true
        errorMessage = ""

        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            user = result.user
        } catch {
            errorMessage = error.localizedDescription
        }

        isLoading = false
    }

    func logOut() {
        do {
            try Auth.auth().signOut()
            user = nil
        } catch {
            errorMessage = error.localizedDescription
        }
    }
}
