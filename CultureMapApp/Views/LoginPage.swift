//
//  LoginPage.swift
//  CultureMapApp
//
//  Created by Onur Şimşek on 14.09.2022.
//

import SwiftUI
import Firebase
import GoogleSignIn

struct LoginPage: View {
    
    @State var isLoading : Bool = false
    @AppStorage ("log_Status") var log_Status = false
    var body: some View {
        VStack{
//            Image
            Image("loginn")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: getREct().height / 3)
                .padding(.horizontal,20)
                .offset(y:10)
//            Circle Bg
                .background(
                Circle()
                    .fill(Color(hue: 0.543, saturation: 0.097, brightness: 0.978))
                    .scaleEffect(2,anchor: .bottom)
                    .offset(y:180)
                )
            
//            text
            VStack(spacing:20){
                Text("Museum Istanbul \nsizleri bekliyor")
                    .font(.largeTitle)
                    .fontWeight(.light)
                    .kerning(1.1)
                    .foregroundColor(Color.black.opacity(0.8))
                    .multilineTextAlignment(.center)
                 
//                Sign in Button
                
                Button {
                    handleLogin()
                } label: {
                    HStack(spacing:25){
                        Image("gg")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 28, height: 28)
                        Text("Sign In")
                            .font(.title3)
                            .fontWeight(.medium)
                            .kerning(1.1)
                            .foregroundColor(Color.blue)
                    }
                    .frame(maxWidth:.infinity)
                    .padding()
                    .background(
                        Capsule()
                            .strokeBorder(Color.blue)
                    )
                }
                .padding(.top,60)
                .frame(width: 400, height: 100.0)
            }
            .padding()
            .padding(.top,40)
        }
        .frame(maxWidth:.infinity,maxHeight: .infinity,alignment: .top)
        .overlay(
            ZStack{
                if isLoading{
                    Color.black
                        .opacity(0.25)
                        .ignoresSafeArea()
                    
                    ProgressView()
                        .font(.title2)
                        .frame(width: 60, height: 60)
                        .background(Color.white)
                        .cornerRadius(60)
                    
                }
            }
            )
    
    
        
    
    }
    func handleLogin(){
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }

        // Create Google Sign In configuration object.
        let config = GIDConfiguration(clientID: clientID)
        
        isLoading = true
        
        GIDSignIn.sharedInstance.signIn(with: config, presenting: getRootViewController()) { [self] user, err in
            if let error = err {
                isLoading = false
                print(error.localizedDescription)
              return
            }

            guard
              let authentication = user?.authentication,
              let idToken = authentication.idToken
            else {
                isLoading = false

              return
            }

            let credential = GoogleAuthProvider.credential(withIDToken: idToken,
                                                           accessToken: authentication.accessToken)
            
            Auth.auth().signIn(with: credential){ result, err in
                isLoading = false

                if let error = err {
                    print(error.localizedDescription)
                  return
                }
                guard let user = result?.user else{
                    return
                }
                print(user.displayName ?? "Success!")
                
                withAnimation{
                    log_Status = true 
                }
            }
        }
        
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}

extension View{
    func getREct() -> CGRect{
        return UIScreen.main.bounds
    }
}


extension View {
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
    
    func getRootViewController() -> UIViewController {
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else{
            return.init()
        }
        guard let root = screen.windows.first?.rootViewController else{
            return.init()
        }
        return root
    }
}
