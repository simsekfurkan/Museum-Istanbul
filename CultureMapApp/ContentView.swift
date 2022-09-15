//
//  ContentView.swift
//  CultureMapApp
//
//  Created by Onur Şimşek on 15.08.2022.
//

import SwiftUI
import Firebase
import GoogleSignIn

struct ContentView: View {
    @AppStorage ("log_Status") var log_Status = false
    @StateObject private var vm = LocationViewModel()
    var body: some View {
         
        if log_Status{
//            Home View
            
                NavigationView{
                VStack(spacing:15){
                    LocationView()
                        .environmentObject(vm)
                    Button("Logout"){
                        GIDSignIn.sharedInstance.signOut()
                        try? Auth.auth().signOut()
                        
                        withAnimation{
                            log_Status = false
                        
                        }
                    }
                    
                }
            }
        }
        else{
            
            LoginPage()
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
