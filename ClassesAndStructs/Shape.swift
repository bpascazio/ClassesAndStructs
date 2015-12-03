//
//  Shape.swift
//  ClassesAndStructs
//
//  Created by Bob Pascazio on 12/2/15.
//  Copyright © 2015 NYCDA. All rights reserved.
//

import UIKit

class Shape: UIView {

    var small = false
    var medium = false
    var large = false
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    func recalculateFrame() {
        
        let currentFrame = frame
        
        if small {
            
            print("small")
            
        } else if medium {
            
            let newFrame = CGRect(x: currentFrame.origin.x, y: currentFrame.origin.y, width: currentFrame.width*2, height: currentFrame.height*2)
            
            self.frame = newFrame
            print("medium")
            
        } else if large {
            
            let newFrame = CGRect(x: currentFrame.origin.x, y: currentFrame.origin.y, width: currentFrame.width*4, height: currentFrame.height*4)
            
            self.frame = newFrame
            print("large")
        }
        
    }
    
    func makeMedium() {
        
        medium = true
        recalculateFrame()
        
    }
    
    func makeLarge() {
        
        large = true
        recalculateFrame()
    }
    
    func centerIn(frameToCenterIn:CGRect) {
        
        // do something here
        let xv = frameToCenterIn.width / 2 - self.frame.width/2
        let yv = frameToCenterIn.height / 2 - self.frame.height/2
        let widthv = self.frame.width
        let heightv = self.frame.height
        
        let newFrame = CGRect(x: xv, y: yv, width: widthv, height: heightv)
        self.frame = newFrame
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
