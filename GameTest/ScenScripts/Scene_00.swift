//
//  Scene_00.swift
//  GameTest
//
//  Created by Jesus Roberto Gonzalez Fonseca  on 12/03/20.
//  Copyright © 2020 Jesus Roberto Gonzalez Fonseca . All rights reserved.
//

import SpriteKit
import GameplayKit


class Scene_00: SKScene {
    
    var botonHome: SKSpriteNode?
    var homeScene: SKScene?
    
    override func sceneDidLoad() {
        super .sceneDidLoad()
        
        botonHome = childNode(withName: "//HomeButton") as? SKSpriteNode
        homeScene = SKScene(fileNamed: "GameScene") as? GameScene
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
      guard let touch = touches.first else {return}
          
          let touchLocation = touch.location(in: self)
          
        
        print("touce")
      // Using optional
          if let homeButton = botonHome{
              if homeButton.contains(touchLocation){
                  //goToScene(scene: homeScene!)
                print("llll")
              }
          }
        
    }
    
    
}
