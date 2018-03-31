//
//  LeagueVC.swift
//  UXUS APP SWOOSH
//
//  Created by USMAN NAWAZ on 31/03/2018.
//  Copyright © 2018 USMAN NAWAZ. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    //get model class
    var player : Players!
    
    // get all buttons varibles
    
    @IBOutlet weak var mensBtn: BorderBtn!
    @IBOutlet weak var womensBtn: BorderBtn!
    @IBOutlet weak var coedBtn: BorderBtn!
    
    @IBOutlet weak var nextBtn: BorderBtn!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 player = Players()
        nextBtn.isEnabled=false
        // Do any additional setup after loading the view.
    }
    
    // clear values function on load screen
//    func clearPlayerValues() -> Void {
//        player?.desiguredLeague=nil
//        player?.selectedLeague=nil
//
//    }
    
    // set selected league values
    func selectedLeague(LeageString league: String?){
       //clearPlayerValues()
        
        
        player.selectedLeague = league!
        
        print(" values inserted : \(player.selectedLeague)")
        
          nextBtn.isEnabled = true
      
  
    }
    
    // set league data by button chose
    @IBAction func MensBtnPressed(_ sender: Any) {
        selectedLeague(LeageString: "Mens Leagues")
    }
    
    @IBAction func womensBtnPressed(_ sender: Any) {
        selectedLeague(LeageString: "Womens League")
    }
    
    @IBAction func coedBtnPressed(_ sender: Any) {
        selectedLeague(LeageString: "Coed Union ")
    }
    
    @IBAction func NextBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "LevelRouteID", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let level = segue.destination as? LevelVC{
            // now transfer data form this class to levelvc class
            level.playerSelected = player
        }
    }
    
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
