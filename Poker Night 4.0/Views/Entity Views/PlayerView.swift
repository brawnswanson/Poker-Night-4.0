//
//  PlayerView.swift
//  Poker Night 4.0
//
//  Created by Daniel Pressner on 22.09.20.
//  Copyright © 2020 Daniel Pressner. All rights reserved.
//

import SwiftUI

struct PlayerView: View {
	
	@ObservedObject var player: Player
	
    var body: some View {
		VStack {
			HStack {
				Text("\(player.name)")
				Text("$\(player.chipCount)")
			}
//			HStack {
//				CardView(card: player.hand[0])
//				CardView(card: player.hand[1])
//			}
		}
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
		PlayerView(player: Player(name: "Dan"))
    }
}
