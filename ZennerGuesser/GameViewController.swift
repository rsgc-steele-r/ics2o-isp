//
//  GameViewController.swift
//  ZennerGuesser
//
//  Created by Student on 2016-12-08.
//  Copyright © 2016 R.J. Steele. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
       super.viewDidLoad()  // must call viewDidLoad() method on parent class
        let scene = GameScene(size: CGSize(width: 2048, height: 1536)) //this will create the basic scene
        
        // now we will configure the scene
        let skView = self.view as! SKView  //tells spritekit that the current view will be the one shown to the apps user
        skView.showsFPS = true  //makes sure frames per second will show
        skView.showsNodeCount = true  //keep track of how many visual elements (nodes) are present
        
        skView.ignoresSiblingOrder = true //to be explained
        scene.scaleMode = .aspectFill  // scene will expand if necessary to fill device screen
        skView.presentScene(scene)     //make the view show the scene we have configured
    }
    
    override var prefersStatusBarHidden: Bool{
        return true //this ensures the status bar on the device is hidden
    }
}
