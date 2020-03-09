//
//  LaunchViewController.swift
//  GameTest
//
//  Created by JESUS ROBERTO GZZ F on 09/03/20.
//  Copyright © 2020 Jesus Roberto Gonzalez Fonseca . All rights reserved.
//

import UIKit

class LaunchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

}
