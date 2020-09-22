//
//  CardView.swift
//  Poker Night 4.0
//
//  Created by Daniel Pressner on 22.09.20.
//  Copyright © 2020 Daniel Pressner. All rights reserved.
//

import SwiftUI

struct CardView: View {
	var card: Card
	
	var body: some View {
		HStack {
			Text("\(card.value.rawValue)")
			card.suit.image
				.foregroundColor(card.suit.color)
		}
	}
}

struct CardView_Previews: PreviewProvider {
	
    static var previews: some View {
		CardView(card: Card(suit: .diamonds, value: .king))
    }
}
