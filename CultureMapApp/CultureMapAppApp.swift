//
//  CultureMapAppApp.swift
//  CultureMapApp
//
//  Created by Onur Şimşek on 15.08.2022.
//

import SwiftUI

@main
struct CultureMapAppApp: App {
    @StateObject private var vm = LocationViewModel()

    var body: some Scene {
        WindowGroup {
            LocationView()
                .environmentObject(vm)
        }
    }
}
