//
//  Rand func.swift
//  Rand
//
//  Created by Сергей Черкашин on 17.03.2024.
//

import Foundation

func rand() -> Int
{
    let ch = Int(arc4random_uniform(UInt32(5 - (1 - 1))) + 1) + (1 - 1)
    return ch
}
