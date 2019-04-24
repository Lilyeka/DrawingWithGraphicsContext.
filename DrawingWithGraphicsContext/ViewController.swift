//
//  ViewController.swift
//  DrawingWithGraphicsContext
//
//  Created by Лилия Левина on 24/04/2019.
//  Copyright © 2019 Лилия Левина. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let myView = MyDrawingView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myView.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        view.addSubview(myView)
        
        //Way 5 (using UIKit)
        let r = UIGraphicsImageRenderer(size:CGSize(width:100,height:100))
        let im = r.image { _ in
            let p = UIBezierPath(ovalIn: CGRect(x:0,y:0,width:100,height:100))
            UIColor.blue.setFill()
            p.fill()
        }
        // im is the blue circle image, put it into UIImageView
        let myImgView = UIImageView(frame: CGRect(x: 100, y: 300, width: 100, height: 100))
        myImgView.image = im
        view.addSubview(myImgView)
        
        //Way 6 (using Core Graphics)
        let r1 = UIGraphicsImageRenderer(size:CGSize(width:100,height:100))
        let im1 = r1.image { _ in
            let con = UIGraphicsGetCurrentContext()!
            con.addEllipse(in:CGRect(x:0,y:0,width:100,height:100))
            con.setFillColor(UIColor.blue.cgColor)
            con.fillPath()
        }
        // im1 is the blue circle image, put it into UIImageView
        let myImgView1 = UIImageView(frame: CGRect(x: 100, y: 500, width: 100, height: 100))
        myImgView1.image = im1
        view.addSubview(myImgView1)
    }


}

