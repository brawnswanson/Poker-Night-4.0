//
//  Chip.swift
//  Poker Night 4.0
//
//  Created by Daniel Pressner on 23.09.20.
//  Copyright © 2020 Daniel Pressner. All rights reserved.
//

import Foundation
import SwiftUI

struct Chip {
	enum ChipColor: Int {
		case white = 1
		case red = 5
		case blue = 10
		case green = 50
		case black = 100
		case pink = 250
		case purple = 500
		case gray = 1000
		
		var color: Color {
			switch self {
			case .white:
				return Color.white
			case .red:
				return Color.red
			case .blue:
				return Color.blue
			case .green:
				return Color.green
			case .black:
				return Color.black
			case .pink:
				return Color.pink
			case .purple:
				return Color.purple
			case .gray:
				return Color.gray
			}
		}
	}
	
	let chipType: ChipColor

}
