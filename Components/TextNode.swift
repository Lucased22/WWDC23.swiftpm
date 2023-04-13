//
//  File.swift
//  
//
//  Created by Lucas Santos on 13/04/23.
//

import Foundation
import SpriteKit

class TextNode: SKNode {
    var text: SKLabelNode
    
    override init() {
        self.text = SKLabelNode(text: "anjngojsnsnfaon")
        
        super.init()
        self.addChild(text)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
