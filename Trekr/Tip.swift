//
//  Tip.swift
//  Trekr
//
//  Created by Tugs Khaliunbat on 6/1/23.
//

import Foundation

struct Tip: Decodable {
    
    let text: String
    let children: [Tip]?
    
}
