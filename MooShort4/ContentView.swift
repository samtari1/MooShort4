//
//  ContentView.swift
//  SiriExample
//
//  Created by Quanpeng Yang on 3/31/26.
//

import SwiftUI
import AppIntents

struct ContentView: View {
    @State private var appData = ApplicationData.shared
    @State private var showingSiriTip: Bool = true
    
    var body: some View {
        VStack {
            SiriTipView(intent: ShowMovie(), isVisible: $showingSiriTip)
            Text(appData.message)
                .font(.title) // Added for a bit of flair
                .padding()
            
            Spacer()
        }
        .padding()
    }
}
