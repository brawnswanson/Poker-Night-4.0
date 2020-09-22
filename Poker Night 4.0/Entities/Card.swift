//
//  Card.swift
//  Poker Night 4.0
//
//  Created by Daniel Pressner on 21.09.20.
//  Copyright © 2020 Daniel Pressner. All rights reserved.
//

import Foundation
import SwiftUI

struct Card {
	let id = UUID()
	let suit: Suit
	let value: FaceValue
}

enum Suit: String, CaseIterable {
	case hearts, spades, diamonds, clubs
	
	var color: Color {
		switch self {
		case .diamonds, .hearts:
			return ColorManager.cardRed
		case .clubs, .spades:
			return ColorManager.cardBlack
		}
	}
	
	var image: Image {
		switch  self {
		case .hearts:
			return Image(systemName: "suit.heart.fill")
		case .diamonds:
			return Image(systemName: "suit.diamond.fill")
		case .spades:
			return Image(systemName: "suit.spade.fill")
		case .clubs:
			return Image(systemName: "suit.club.fill")
		}
	}
}

enum FaceValue: String, CaseIterable {
	case two = "2", three = "3", four = "4", five = "5", six = "6", seven = "7", eight = "8", nine = "9", ten = "10", jack = "J", queen = "Q", king = "K", ace = "A"
	
	func numericValue(aceHigh: Bool) -> Int {
		switch self {
		case .ace:
			return aceHigh ? 14 : 1
		case .two:
			return 2
		case .three:
			return 3
		case .four:
			return 4
		case .five:
			return 5
		case .six:
			return 6
		case .seven:
			return 7
		case .eight:
			return 8
		case .nine:
			return 9
		case .ten:
			return 10
		case .jack:
			return 11
		case .queen:
			return 12
		case .king:
			return 13
		}
	}
}
