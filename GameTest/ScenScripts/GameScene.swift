//
//  GameScene.swift
//  GameTest
//
//  Created by Jesus Roberto Gonzalez Fonseca  on 2/28/20.
//  Copyright © 2020 Jesus Roberto Gonzalez Fonseca . All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    var labelFooter: SKNode!
    var btnNext: SKSpriteNode!
    var btnPrevous: SKSpriteNode!
    var btnSound: SKSpriteNode!
    var btnHome: SKSpriteNode!
    var btnStart: SKSpriteNode?
    var nextScene: SKScene?
    var homeScene: SKScene?
    //DEclaracion de Ndoso
    
    override func sceneDidLoad() {
        super.sceneDidLoad()
        labelFooter = childNode(withName: "Footer")
        btnNext = childNode(withName: "//NextButton") as! SKSpriteNode
        btnPrevous = childNode(withName: "//PrevousButton") as! SKSpriteNode
        btnSound = childNode(withName: "//SoundButton") as! SKSpriteNode
        btnHome = childNode(withName: "//HomeButton") as! SKSpriteNode
        btnStart = childNode(withName: "//StartButton") as? SKSpriteNode
        nextScene = SKScene(fileNamed: "Scene_00") as? Scene_00
        //homeScene = SKScene(fileNamed: "GameScene") as? GameScene
    }
    
    
    override func didMove(to view: SKView) {
 
    }
    
    func touchDown(atPoint pos : CGPoint) {
       print("dsfdsf")
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        guard let touch = touches.first else {return}
        
        let touchLocation = touch.location(in: self)
        print("dfdsf")
    // Using optional
        if let statButton = btnStart{
            if statButton.contains(touchLocation){
                goToScene(scene: nextScene!)
            }
        }
    }

    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    // Fuction to trancitions
    
    func goToScene(scene: SKScene){
        let sceneTransition = SKTransition.fade(with: UIColor.darkGray, duration: 1.5)
        scene.scaleMode = .aspectFill
        self.view?.presentScene(scene, transition: sceneTransition)
        
    }
    
    
}
