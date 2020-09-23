//
//  Player.swift
//  Poker Night 4.0
//
//  Created by Daniel Pressner on 22.09.20.
//  Copyright © 2020 Daniel Pressner. All rights reserved.
//

import Foundation

class Player: ObservableObject {
	let id = UUID()
	let name: String
	var hand: [Card] = []
	@Published var chipCount: Int = 0
	
	init(name: String) {
		self.name = name
	}
}
