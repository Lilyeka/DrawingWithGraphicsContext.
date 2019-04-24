//
//  myDrawingView.swift
//  DrawingWithGraphicsContext
//
//  Created by Лилия Левина on 24/04/2019.
//  Copyright © 2019 Лилия Левина. All rights reserved.
//

import UIKit

class MyDrawingView: UIView {

    //Way 1
    //using UIKit to draw into the current context, which Cocoa has already prepared for me
    override func draw(_ rect: CGRect) {
        let p = UIBezierPath(ovalIn: CGRect(x:0,y:0,width:100,height:100))
        UIColor.blue.setFill()
        p.fill()
    }
    
    //Way 2
    //Now I’ll do the same thing with Core Graphics; this will require that I first get a reference to the current context
//    override func draw(_ rect: CGRect) {
//        let con = UIGraphicsGetCurrentContext()!
//        con.addEllipse(in:CGRect(x:0,y:0,width:100,height:100))
//        con.setFillColor(UIColor.blue.cgColor)
//        con.fillPath()
//    }
    
    //Way 3
    //using UIKit to draw into the current context, which I get from reference to a context ( make it the current context )(and I must remember to stop making it the current context when I’m done drawing):
//    override func draw(_ layer: CALayer, in ctx: CGContext) {
//        UIGraphicsPushContext(ctx)
//        let p = UIBezierPath(ovalIn: CGRect(x:0,y:0,width:100,height:100))
//        UIColor.blue.setFill()
//        p.fill()
//        UIGraphicsPopContext()
//    }
    
    //Way 4
    //To use Core Graphics I simply keep referring to the context I was handed:
//    override func draw(_ layer: CALayer, in ctx: CGContext) {
//        ctx.addEllipse(in:CGRect(x:0,y:0,width:100,height:100))
//        ctx.setFillColor(UIColor.blue.cgColor)
//        ctx.fillPath()
//    }

}
