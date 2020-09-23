//
//  GameManager.swift
//  Poker Night 4.0
//
//  Created by Daniel Pressner on 23.09.20.
//  Copyright © 2020 Daniel Pressner. All rights reserved.
//

import Foundation

class GameManager: Testing {
	
	var players: [Player] = []
	
	init(numberOfPlayers: Int) {
		players = generate(numberOfFakePlayers: numberOfPlayers)
	}
}

protocol Testing {
	func generate(numberOfFakePlayers players: Int) -> [Player]
}

extension Testing {
	func generate(numberOfFakePlayers players: Int) -> [Player] {
		var playerList: [Player] = []
		let names = ["Dan", "Kristen", "Nate", "Julia", "Mochi", "Lexi", "Andrew"]
		for _ in 1...players {
			let newPlayer = Player(name: names.randomElement()!)
			playerList.append(newPlayer)
		}
		return playerList
	}
}
