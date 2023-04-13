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
    private var text: TextNode?
    
    
    override func sceneDidLoad() {
        scene?.backgroundColor = .red
        // Add a SKNode to place the objects at the scene easier
        playerNode = SoccerPlayerNode()
        textBox = TextBoxNode("Frame 1")
        text = TextNode("Futebol… Você em algum momento da vida, já viu, ouviu ou jogou futebol né? Afinal, estamos falando do esporte mais popular em todo o mundo. E é claro, quando pensamos em futebol apaixonante, lembramos do futebol Brasileiro!")
        text?.position = CGPoint(x: 0, y: -70)
        
        playerNode?.position = CGPoint(x: 0.5, y: 100)
        textBox?.position  = CGPoint(x: -100, y: -100)
        
        self.addChild(playerNode!)
        self.addChild(textBox!)
        self.textBox?.addChild(text!)
        
    }

    
    override func didMove(to view: SKView) {
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        
    }
}
