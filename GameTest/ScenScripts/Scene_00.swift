//
//  Scene_00.swift
//  GameTest
//
//  Created by Jesus Roberto Gonzalez Fonseca  on 12/03/20.
//  Copyright © 2020 Jesus Roberto Gonzalez Fonseca . All rights reserved.
//

import SpriteKit
import GameplayKit


class Scene_00: GameScene {
    
    override func sceneDidLoad() {
        super .sceneDidLoad()
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
      guard let touch = touches.first else {return}
          
          let touchLocation = touch.location(in: self)

      // Using optional
          if let homeButton = btnHome{
              if homeButton.contains(touchLocation){
                homeScene = SKScene(fileNamed: "GameScene") as? GameScene
                goToScene(scene: homeScene!)
              }
          }
    }
    
}
