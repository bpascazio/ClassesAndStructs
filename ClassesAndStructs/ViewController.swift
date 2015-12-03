//
//  ViewController.swift
//  ClassesAndStructs
//
//  Created by Bob Pascazio on 12/2/15.
//  Copyright © 2015 NYCDA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor.blueColor()
        
        let shapeFrame = CGRect(x: 10, y: 10, width: 50, height: 150)
        let someShape = UIView(frame: shapeFrame)
        someShape.backgroundColor = UIColor.yellowColor()
        
        let shapeFrame2 = CGRect(x: 50, y: 50, width: 100, height: 150)
        let someShape2 = Shape(frame: shapeFrame2)
        someShape2.backgroundColor = UIColor.redColor()
        //someShape2.makeLarge()
        someShape2.centerIn(view.frame)
        
        view.addSubview(someShape)
        view.addSubview(someShape2)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

