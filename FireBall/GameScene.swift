//
//  GameScene.swift
//  FireBall
//
//  Created by sinbad on 6/12/19.
//  Copyright © 2019 sinbad. All rights reserved.
//

import SpriteKit

class Ball : SKSpriteNode { }

class GameScene: SKScene {
    
    var balls = ["ballBlue", "ballGreen", "ballPurple", "ballRed", "ballYellow"]
    
    override func didMove(to view: SKView) {
        
        
        //backgroundColor = .red
       let background = SKSpriteNode(imageNamed: "checkerboard")
      ///  background.size = CGSize(width: 500.0, height: 500.0)
            background.position = CGPoint(x: frame.midX, y: frame.midY)
        background.alpha = 0.2
        background.zPosition = -1
        addChild(background)
        
        let ball = SKSpriteNode(imageNamed: "ballBlue")
        let ballRadius = ball.frame.width / 2.0
        print(ballRadius, ball)
        
        for i in stride(from: ballRadius, to: view.bounds.width - ballRadius, by: ball.frame.width) {
            for j in stride(from: 100, to: view.frame.height - ballRadius, by: ball.frame.height) {
                let ballType = balls.randomElement()! 
                let ball = Ball(imageNamed: ballType)
                ball.position = CGPoint(x: i, y: j)
                ball.name = ballType
                addChild(ball)
              
            }
        }
        
        
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
