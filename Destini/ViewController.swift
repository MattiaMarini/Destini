//
//  ViewController.swift
//  Destini
//
//  Created by Mattia Marini on 14/07/2019.
//  Copyright © 2019 Mattia Marini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var storyPage : Int = 0
    var stories = StoryBank()
    var topButtonTitle = TopButtonTitleBank()
    var bottomButtonTitle = BottomButtonTitleBank()
    
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if (storyPage == 0 || storyPage == 1) && sender.tag == 1 {
            storyPage = 2
            updateView()
        }
        else if storyPage == 0 && sender.tag == 2 {
            storyPage = 1
            updateView()
        }
        else if storyPage == 1 && sender.tag == 2 {
            storyPage = 3
            lastViewsNoButtons()
        }
        else if storyPage == 2 && sender.tag == 1 {
            storyPage = 5
            lastViewsNoButtons()
        }
        
        else {
            storyPage = 4
            lastViewsNoButtons()
        }
    }
    
    func updateView() {
        
        //Setting up story text and the 2 button texts
    storyTextView.text = stories.list[storyPage].storyText
    topButton.setTitle(topButtonTitle.list[storyPage].buttonTitle, for: .normal)
    bottomButton.setTitle(bottomButtonTitle.list[storyPage].buttonTitle, for: .normal)
        topButton.isHidden = false
        bottomButton.isHidden = false
        restartButton.isHidden = true
    
    }

    func lastViewsNoButtons() {
        //Setting up story text, hiding the 2 button texts and showing restart button
        storyTextView.text = stories.list[storyPage].storyText
        topButton.isHidden = true
        bottomButton.isHidden = true
        restartButton.isHidden = false
        
    }

    
    @IBAction func restartButtoPressed(_ sender: Any) {
        storyPage = 0
        updateView()
    }
    
}


