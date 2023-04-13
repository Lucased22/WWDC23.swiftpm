//
//  File.swift
//  
//
//  Created by Lucas Santos on 12/04/23.
//

import Foundation
import SpriteKit

class InitialGameScene: SKScene {
    //playerNode
    private var playerNode: SoccerPlayerNode?
    //AnchorNode
    private var sceneNode = SKNode()
    // Label nodes
    private var textBox: TextBoxNode?
    private var text: SKLabelNode?
    
    
    override func sceneDidLoad() {
        scene?.backgroundColor = .red
        // Add a SKNode to place the objects at the scene easier
        playerNode = SoccerPlayerNode()
        textBox = TextBoxNode("Frame 1")
        playerNode?.position = CGPoint(x: 0.5, y: 100)
        textBox?.position  = CGPoint(x: -400, y: -200)
        
        self.addChild(playerNode!)
        self.addChild(textBox!)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        playerNode?.playAnim(state:.playing )
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        playerNode?.playAnim(state: .idle )
    }
    
    override func didMove(to view: SKView) {
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        
    }
}
