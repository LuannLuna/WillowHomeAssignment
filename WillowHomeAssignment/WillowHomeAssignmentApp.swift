import SwiftUI
import AVFoundation
import Combine

@main
struct WillowHomeAssignmentApp: App {
    @StateObject private var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appState)
        }
    }
}
