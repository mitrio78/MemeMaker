//
//  ViewController.swift
//  MemeMaker
//
//  Created by Дмитрий Гришечко on 28.09.2021.
//  Copyright © 2021 Дмитрий Гришечко. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        topCaptionSegmentControl.removeAllSegments()
        for choice in topChoices {
            topCaptionSegmentControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        topCaptionSegmentControl.selectedSegmentIndex = 0
        bottomCaptionSegmentControl.removeAllSegments()
        for choice in bottomChoices {
            bottomCaptionSegmentControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
            bottomCaptionSegmentControl.selectedSegmentIndex = 0
        }
        
        printCaptions()
    }

  
    @IBOutlet weak var topCaptionSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var bottomCaptionSegmentControl: UISegmentedControl!
    
    
    @IBOutlet weak var topCaptionLabel: UILabel!
    
    
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
   
    @IBAction func captionSegmentControl(_ sender: UISegmentedControl) {
        printCaptions()
    }
    let topChoices = [CaptionChoice(emoji: "🕶", caption: "Знаешь, что круто?"), CaptionChoice(emoji: "💥", caption: "Знаешь, что меня бесит?"), CaptionChoice(emoji: "💕", caption: "Знаешь, что я люблю?")]
    let bottomChoices = [CaptionChoice(emoji: "🐱", caption: "Кошки-макарошки"),CaptionChoice(emoji: "🐕", caption: "Псы, хотящие колбасы"),CaptionChoice(emoji: "🐒", caption: "Мартышки жующие штанишки")]
    
    func printCaptions () {
        let topIndex = topCaptionSegmentControl.selectedSegmentIndex
        topCaptionLabel.text = topChoices[topIndex].caption
        let bottomIndex = bottomCaptionSegmentControl.selectedSegmentIndex
        bottomCaptionLabel.text = bottomChoices[bottomIndex].caption
    }
    
    
    
}

