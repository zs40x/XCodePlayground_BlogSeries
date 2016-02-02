//: Playground - noun: a place where people can play

import UIKit
import SpriteKit
import XCPlayground

let sceneView =
    SKView(frame: CGRect(x: 0, y: 0, width: 480, height: 320))

let scene = SKScene(size: CGSize(width: 480, height: 320))
sceneView.showsFPS = true
sceneView.showsPhysics = true
scene.physicsWorld.gravity = CGVector(dx: 0, dy: 0)
scene.physicsBody = SKPhysicsBody(edgeLoopFromRect: scene.frame)
sceneView.presentScene(scene)

XCPShowView("My Scene", view: sceneView)


let spaceShip = SKSpriteNode(imageNamed: "spaceship")

spaceShip.name = "spaceship"
spaceShip.position =
    CGPoint(x: scene.size.width * 0.25, y: scene.size.height * 0.50)
spaceShip.physicsBody = SKPhysicsBody(circleOfRadius: spaceShip.size.width/2)

scene.addChild(spaceShip)

spaceShip.runAction(
        SKAction.sequence([
                SKAction.scaleTo(0.1, duration: 2),
                SKAction.rotateByAngle(2, duration: 2),
                SKAction.moveBy(CGVector(dx: -25, dy: -25), duration: 2),
                SKAction.rotateByAngle(3, duration: 2),
                SKAction.scaleTo(0.3, duration: 1),
                SKAction.applyImpulse(CGVector(dx: 350, dy: 125), atPoint: CGPoint(x: 0, y: 0), duration: 20)
            ])
    )
