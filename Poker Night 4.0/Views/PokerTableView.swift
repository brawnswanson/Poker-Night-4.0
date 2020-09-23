//
//  PokerTableView.swift
//  Poker Night 4.0
//
//  Created by Daniel Pressner on 23.09.20.
//  Copyright © 2020 Daniel Pressner. All rights reserved.
//

import SwiftUI

struct PokerTableView: View {
    var body: some View {
		ZStack {
			Rectangle()
				.edgesIgnoringSafeArea(.all)
				.foregroundColor(Color("FeltGreen"))
			VStack {
				VStack {
					HStack {
						Text("Dan")
						Spacer()
						Text("Kristen")
						Spacer()
						Text("Lexi")
						Spacer()
						Text("Julia")
						Spacer()
						Text("Andrew")
					}.padding()
					HStack {
						Text("Mochi")
						Spacer()
						Text("Julia")
					}.padding()
				}
				Spacer()
				PlayerView(player: Player(name: "Dan"))
			}
			VStack {
				HStack {
					Text("Card")
					Text("Card")
					Text("Card")
					Text("Card")
					Text("Card")
				}.padding()
				Text("Pot").padding()
			}
		}
    }
}

struct PokerTableView_Previews: PreviewProvider {
    static var previews: some View {
		PokerTableView().previewLayout(.fixed(width: 667, height: 375))
    }
}
