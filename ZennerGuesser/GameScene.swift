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
    let cross = SKSpriteNode(imageNamed: "Cross") //thats the cross card
    let square = SKSpriteNode(imageNamed: "Square") //thats the Square card
    let circle = SKSpriteNode(imageNamed: "Circle") //thats the Circle card
    let star = SKSpriteNode(imageNamed: "Star") //thats the Star card
    let wavylines = SKSpriteNode(imageNamed: "WavyLines") //thats the squiggle card
    
    override func didMove(to view: SKView) {
        
   
        // background is plain white
        backgroundColor = SKColor.white
        
        cross.position = CGPoint(x: size.width/2, y: size.height/4*3) // where the cross goes
        cross.setScale(3.0)
        addChild(cross) //this puts cross in
        
        square.position = CGPoint(x: size.width/2.60, y: size.height/2) // where the square goes
        square.setScale(3.0)
        addChild(square) //this puts square in
         
        
        circle.position = CGPoint(x: size.width/2.60, y: size.height/4*3) // where the Circle goes
        circle.setScale(3.0)
        addChild(circle) //this puts Circle in
        
        
        star.position = CGPoint(x: size.width/1.60, y: size.height/4*3) // where the star goes
        star.setScale(3.0)
        addChild(star) //this puts star in
        
        
        wavylines.position = CGPoint(x: size.width/1.60, y: size.height/2) // where the squiggles goes
        wavylines.setScale(3.0)
        addChild(wavylines) //this puts star in
        
        // what the score label says
        selectionLabel.text = String(selected)
        selectionLabel.fontColor = SKColor.black
        selectionLabel.fontSize = 100
        selectionLabel.zPosition = 150
        selectionLabel.position = CGPoint(x: size.width/2, y: size.height/15)
        addChild(selectionLabel)

        //this lets scene respond too touch
    }
    
    //this lets scene respond too touch
    override func touchesBegan(_ touches: Set<UITouch>,
                               with event:UIEvent?) {
        
        // a touch has many points because fingers are big
        guard let touch = touches.first else {
            return
        }
        
        //get the location of the first touch
        let touchLocation = touch.location(in:self)
        
        //call a function to cause the cards reaction
        if circle.frame.contains(touchLocation) {
            selected = 1
            selectionLabel.text = String(selected)
            print("clicked circle")
        } else if star.frame.contains(touchLocation){
            selected = 2
            selectionLabel.text = String(selected)
            print ("clicked star")
            
        }else if square.frame.contains(touchLocation){
            selected = 3
            selectionLabel.text = String(selected)
            print ("clicked square")
        }else if wavylines.frame.contains(touchLocation){
            selected = 4
            selectionLabel.text = String(selected)
        
            print ("clicked wavy lines")
        }else if cross.frame.contains(touchLocation){
            selected = 5
            selectionLabel.text = String(selected)
            print ("clicked cross")
        
    }

    
}


}
var random = Int(arc4random_uniform(5)) + 1

