//
//  Deck.swift
//  Poker Night 4.0
//
//  Created by Daniel Pressner on 21.09.20.
//  Copyright © 2020 Daniel Pressner. All rights reserved.
//

import Foundation
import Combine

struct Deck {
	var cards: [Card]
	private let deckSubject = PassthroughSubject<Card, Never>()
	let deckPublisher: AnyPublisher<Card, Never>
	
	init() {
		cards = []
		for suit in Suit.allCases {
			for value in FaceValue.allCases {
				let card = Card(suit: suit, value: value)
				cards.append(card)
			}
		}
		deckPublisher = deckSubject.eraseToAnyPublisher()
	}
}

extension Deck {
	
	mutating func shuffleAndDeal() {
		shuffle()
		cutDeck()
		deal()
	}
	
	private mutating func shuffle() {
		cards.shuffle()
	}
		
	private mutating func cutDeck() {
		let cutSpot = (0...51).randomElement()!
		let topHalf = Array(cards[0...cutSpot])
		let bottomHalf = Array(cards[cutSpot + 1...51])
		cards = bottomHalf + topHalf
	}
	
	private func deal() {
		for card in cards {
			deckSubject.send(card)
		}
		deckSubject.send(completion: .finished)
	}
}
