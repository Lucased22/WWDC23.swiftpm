//
//  TextBoxNode.swift
//  
//
//  Created by Lucas Santos on 12/04/23.
//

import Foundation
import SpriteKit

class TextBoxNode: SKNode {
    var image: SKSpriteNode
  
    
    init(_ imageName: String) {
        self.image = SKSpriteNode(imageNamed: imageName)
        self.image.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        self.image.zPosition = -3
     
        super.init()
        self.addChild(image)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
