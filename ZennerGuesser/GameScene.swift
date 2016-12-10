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
    
    //basic score label
    let selectionLabel = SKLabelNode(fontNamed: "Helvetica-Bold")
    var selected = 0
    
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
        
        let star = SKSpriteNode(imageNamed: "Star") //thats the Star card
        star.position = CGPoint(x: size.width/1.60, y: size.height/4*3) // where the star goes
        star.setScale(3.0)
        addChild(star) //this puts star in
        
        let wavylines = SKSpriteNode(imageNamed: "WavyLines") //thats the squiggle card
        wavylines.position = CGPoint(x: size.width/1.60, y: size.height/4) // where the squiggles goes
        wavylines.setScale(3.0)
        addChild(wavylines) //this puts star in
        
        // what the score label says
        selectionLabel.text = String(selected)
        selectionLabel.fontColor = SKColor.black
        selectionLabel.fontSize = 100
        selectionLabel.zPosition = 150
        selectionLabel.position = CGPoint(x: size.width/2, y: size.height/15)
        addChild(selectionLabel)

    }
}



