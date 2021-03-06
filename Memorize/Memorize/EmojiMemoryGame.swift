//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Athena HernΓ‘ndez on 2/14/22.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    private static let emojis = ["π²", "π", "π", "π", "π", "π", "π", "π", "π", "βοΈ", "π", "β΅οΈ", "πΈ", "πΆ", "π", "π", "π΄", "π‘", "π΅", "π", "π", "π", "π»", "π"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 8) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
    
    func shuffle() {
        model.shuffle()
    }
    
    func restart() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}
