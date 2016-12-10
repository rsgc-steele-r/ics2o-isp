//
//  GameScene.swift
//  ZennerGuesser
//
//  Created by Student on 2016-12-08.
//  Copyright © 2016 R.J. Steele. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    override func didMove(to view: SKView) {
        
        // background is plain white
        backgroundColor = SKColor.white
        
        let cross = SKSpriteNode(imageNamed: "Cross") //thats the cross card
        cross.position = CGPoint(x: size.width/2, y: size.height/2) // where the cross goes
        cross.setScale(3.0)
        addChild(cross) //this puts cross in
        
        let square = SKSpriteNode(imageNamed: "Square") //thats the Square card
        square.position = CGPoint(x: size.width/2.75, y: size.height/4) // where the square goes
        square.setScale(3.0)
        addChild(square) //this puts square in
        
        let circle = SKSpriteNode(imageNamed: "Circle") //thats the Circle card
        circle.position = CGPoint(x: size.width/2.75, y: size.height/4*3) // where the Circle goes
        circle.setScale(3.0)
        addChild(circle) //this puts Circle in
    }
}



