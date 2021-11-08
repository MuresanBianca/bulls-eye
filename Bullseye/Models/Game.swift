//
//  Game.swift
//  Bullseye
//
//  Created by Bianca Muresan on 02.11.2021.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        100 - abs(target - sliderValue)
    }
}
