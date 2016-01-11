//
//  ViewController.swift
//  SantaGayOmeter
//
//  Created by Nicholas Dauchot on 1/9/16.
//  Copyright (c) 2016 blackhat. All rights reserved.
//

import UIKit
import AVFoundation


    class ViewController: UIViewController {
        
       var pointCount = 0
        
        @IBOutlet var question: UILabel!
        
        @IBOutlet var yesNote: UILabel!
        
        @IBOutlet var noNote: UILabel!
        
        @IBOutlet var judgment: UILabel!
        
        @IBOutlet var points: UILabel!
        
        @IBOutlet var yes: UIButton!
        
        @IBOutlet var no: UIButton!
        
        @IBOutlet var back: UIButton!
        
        @IBOutlet var yesVideo: UIWebView!
        
        @IBOutlet var noVideo: UIWebView!
        
        
        
        @IBAction func answerYes(sender: AnyObject) {
            back.hidden = false;
            question.hidden = true;
            no.hidden = true;
            yes.hidden=true;
            yesVideo.hidden = false;
            yesNote.hidden = false;
            judgment.hidden = true;
            points.hidden = true;
            
            pointCount += 1
            points.text = "\(pointCount)"
          
     
            
        }
        
        @IBAction func answerNo(sender: AnyObject) {
            back.hidden = false;
            question.hidden = true;
            no.hidden = true;
            yes.hidden=true;
            noVideo.hidden = false;
            noNote.hidden = false;
            judgment.hidden = true;
            points.hidden = true;
            
            pointCount -= 1
            points.text = "\(pointCount)"
            
            
        }
        
        
        @IBAction func back(sender: AnyObject) {
            back.hidden = true;
            question.hidden = false;
            no.hidden = false;
            yes.hidden=false;
            noVideo.hidden = true;
            yesVideo.hidden = true;
            yesNote.hidden = true;
            noNote.hidden = true;
            judgment.hidden = false;
            points.hidden = false;
        }
        
        override func viewDidLoad() {
            
            super.viewDidLoad()
            
            
            // Do any additional setup after loading the view, typically from a nib.
            // Do any additional setup after loading the view, typically from a nib.
            
            var YouTubeLink:String = "http://www.youtube.com/embed/tJFa7Ca85WE"
            
            var YouTubeLink2:String = "https://www.youtube.com/embed/4qjMZsxFuV0"
            
            let width = 225
            let height = 110
            let frame = 10
            
            let Code:NSString = "<iframe width=\(width) height=\(height) src=\(YouTubeLink) frameborder =\(frame) allowfullscreen ></iframe>";
            
            let Code2:NSString = "<iframe  width=\(width) height=\(height) src=\(YouTubeLink2) frameborder =\(frame) allowfullscreen></iframe>";
            
            self.yesVideo.loadHTMLString(Code as String, baseURL: nil)
            
            self.noVideo.loadHTMLString(Code2 as String, baseURL: nil)
    
            
            
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
}




