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
    private var nextSceneButton : SKButtonNode?
    
    override func sceneDidLoad() {
        scene?.backgroundColor = .red
       // instancias dos objetos na tela
        playerNode = SoccerPlayerNode()
        textBox = TextBoxNode("Frame 1")
        text = TextNode("Futebol… Você em algum momento da vida, já viu, ouviu ou jogou futebol né? Afinal, estamos falando do esporte mais popular em todo o mundo. E é claro, quando pensamos em futebol apaixonante, lembramos do futebol Brasileiro!")
        nextSceneButton = SKButtonNode(imageNamed: "arrow_bt", clickAction: {
            let NextScene = CatchTheBird(size: self.size)
            NextScene.scaleMode = self.scaleMode
            self.view?.presentScene(NextScene)
            print("Clicooooou poha")
        }, unclickAction: {
            //            print("AAAAAAA")
        })
        
        // posicionamentos e alterações nos objetos da tela
        text?.position = CGPoint(x: 0, y: -70)
        playerNode?.position = CGPoint(x: 0.5, y: 100)
        textBox?.position  = CGPoint(x: -100, y: -100)
        textBox?.zPosition = 2
        nextSceneButton?.position = CGPoint(x: 400, y: -100)
        nextSceneButton?.zPosition = 5
        nextSceneButton?.setScale(-5)

        
        self.addChild(nextSceneButton!)
        self.addChild(playerNode!)
        self.addChild(textBox!)
        self.textBox?.addChild(text!)
        
    }

    
    override func didMove(to view: SKView) {
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        
    }
}
