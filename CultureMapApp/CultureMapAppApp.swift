//
//  CultureMapAppApp.swift
//  CultureMapApp
//
//  Created by Onur Şimşek on 15.08.2022.
//

import SwiftUI
import Firebase
import GoogleSignIn

@main
struct CultureMapAppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var deleagte
    @StateObject private var vm = LocationViewModel()

    var body: some Scene {
        WindowGroup {
          ContentView()
//            LoginPage()
//            LocationView()
//                .environmentObject(vm)
        }
    }
}

class AppDelegate:NSObject,UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
    @available(iOS 9.0, *)
    func application(_ application: UIApplication, open url: URL,
                     options: [UIApplication.OpenURLOptionsKey: Any])
      -> Bool {
      return GIDSignIn.sharedInstance.handle(url)
    }
}

