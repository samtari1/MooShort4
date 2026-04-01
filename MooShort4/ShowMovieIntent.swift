//
//  Untitled.swift
//  SiriExample
//
//  Created by Quanpeng Yang on 3/31/26.
//

import SwiftUI
import AppIntents

struct ShowMovie: AppIntent {
    static let title: LocalizedStringResource = "Show Movie"
    static let description = IntentDescription("Shows your favorite movie.")
    
    // .background allows the intent to run without opening the app's UI
    static let supportedModes: IntentModes = .background
    
    @MainActor
    func perform() async throws -> some IntentResult & ProvidesDialog & ShowsSnippetView {
        let message = "Your favorite movie is Spider-Man!"
        
        // This returns the result, speaks the message, and displays the image view
        return .result(
            dialog: IntentDialog(stringLiteral: message),
            view: MovieSnippetView()
        )
    }
}

struct MovieSnippetView: View {
    var body: some View {
        VStack {
            Image("spiderman")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(12)
                .padding(.bottom, 5)
            
            Text("Spider-Man: Across the Spider-Verse")
                .font(.headline)
        }
        .padding()
    }
}
