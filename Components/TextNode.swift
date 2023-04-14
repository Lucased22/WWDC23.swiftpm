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
    
    init(_ textBody: String) {
        self.text = SKLabelNode(text: textBody)
        self.text.fontSize = 24
        self.text.fontColor = .black
        self.text.lineBreakMode = NSLineBreakMode.byWordWrapping
        self.text.numberOfLines = 0
        self.text.preferredMaxLayoutWidth = 500
        self.text.zPosition = 5
        super.init()
        self.addChild(text)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
