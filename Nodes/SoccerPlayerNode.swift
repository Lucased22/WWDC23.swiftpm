//
//  File.swift
//  
//
//  Created by Lucas Santos on 12/04/23.
//

import Foundation
import SpriteKit

enum characterAnim {case idle, playing, none}

class SoccerPlayerNode: SKNode {
    var characterSprite: SKSpriteNode?
    private var lastState: characterAnim = .none

    let idleAnimation = SKAction.animate(with: .init(withFormat: "char_idle%@", range: 1...4), timePerFrame: 0.1)
    let playingAnimation = SKAction.animate(with: .init(withFormat: "char_walk%@", range: 1...4), timePerFrame: 0.1)
    
    override init() {
        
        characterSprite = SKSpriteNode(imageNamed: "char_idle1")
        characterSprite?.setScale(5)
        characterSprite?.anchorPoint = CGPoint(x: 0.5, y: 0.5)

        
        super.init()
        self.addChild(characterSprite!)
        self.playAnim(state: .idle)
        self.isUserInteractionEnabled = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        playAnim(state:.playing )
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        playAnim(state: .idle )
    }
    
    
    public func playAnim(state:  characterAnim) {
        switch state {
        case .idle:
            guard lastState != .idle else {return}
            lastState = .idle
            self.characterSprite!.run(.repeatForever(idleAnimation))
        case .playing:
            guard lastState != .playing else {return}
            lastState = .playing
            self.characterSprite!.run(.repeatForever(playingAnimation))
        case .none:
            break
        }
    }
    
    public func KickBall() {
        self.playAnim(state: .playing)
    }
    
}
