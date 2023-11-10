//
//  ContentView.swift
//  Phoneix Raiser
//
//  Created by Pradeep's MacBook on 10/11/23.
//

import SwiftUI
import AppCenter
import AppCenterCrashes
import AppCenterAnalytics

struct ContentView: View {
    var body: some View {
        VStack {
            Button {
                exit(0)
            } label: {
                Text("Simulate Crash")
            }
        }
        .onAppear {
            Analytics.trackEvent("Phoneix_Raiser_onLaunch")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
    }
}

#Preview {
    ContentView()
}
