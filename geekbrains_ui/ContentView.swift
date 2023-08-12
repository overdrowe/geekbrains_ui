import SwiftUI

struct ContentView: View {
	@State var loginValue = ""
	@State var passwordValue = ""
	
	var body: some View {
		Color.red
			.opacity(0.3)
			.ignoresSafeArea()
			.overlay(
				VStack(alignment: .center) {
					Text("Welcome!")
						.bold()
						.font(.title)
						.foregroundColor(.accentColor)
					VStack {
						TextField("login", text: $loginValue)
						SecureField("password", text: $passwordValue)
					}
					.frame(width: 256)
					.textFieldStyle(.roundedBorder)
					.opacity(0.7)
					HStack {
						Spacer()
						Button("Login", action: loginClicked)
					}
					.frame(width: 256)
				}
					.frame(width: 300, height: 200)
					.padding()
					.background(.white.opacity(0.2))
					.cornerRadius(12)
					
			)
		
	}
}


// MARK: - login action
extension ContentView {
	func loginClicked() {
		print(loginValue + " " + passwordValue)
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
