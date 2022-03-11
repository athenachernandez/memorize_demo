//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Athena Hernández on 2/8/22.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
