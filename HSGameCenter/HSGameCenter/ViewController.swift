//
//  ViewController.swift
//  GameCenterTutorial
//
//  Created by FV iMAGINATION on 21/10/2016.
//  Copyright © 2016 FV iMAGINATION. All rights reserved.
//

import UIKit
import GameKit


class ViewController: UIViewController
{
    
    /* Views */
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    
    
    
    var gcEnabled = Bool()
    var gcDefaultLeaderBoard = String()
    
    var score = 0
    
    // IMPORTANT: replace the red string below with your own Leaderboard ID (the one you've set in iTunes Connect)
    let LEADERBOARD_ID = "com.score.mygamename"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Show initial score
        scoreLabel.text = "\(score)"
        
        
        // Call the GC authentication controller
        HSGameCenter.shared.authenticateLocalPlayer()
    }
    
    // MARK: - ADD 10 POINTS TO THE SCORE AND SUBMIT THE UPDATED SCORE TO GAME CENTER
    @IBAction func addScoreAndSubmitToGC(_ sender: AnyObject) {
        // Add 10 points to current score
        score += 10
        scoreLabel.text = "\(score)"
        HSGameCenter.shared.submitScoreToGC(score: score)
    }
    
    // MARK: - OPEN GAME CENTER LEADERBOARD
    @IBAction func checkGCLeaderboard(_ sender: AnyObject) {
        HSGameCenter.shared.openLeaderboard()
    }
    
}

