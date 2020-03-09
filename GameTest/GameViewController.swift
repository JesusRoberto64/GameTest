//
//  GameViewController.swift
//  GameTest
//
//  Created by Jesus Roberto Gonzalez Fonseca  on 2/28/20.
//  Copyright © 2020 Jesus Roberto Gonzalez Fonseca . All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    //PRUBA PARA GITHUB
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            view.showsFPS = true
            view.showsNodeCount = true
        }
        
//        UIDevice.current.setValue(self.preferredInterfaceOrientationForPresentation, forKey: "orientation")
    }

    override var shouldAutorotate: Bool {
        return false
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {

        return .landscape
    }
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation{
        return .landscapeLeft
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
}
