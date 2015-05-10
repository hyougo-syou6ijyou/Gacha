//
//  ResultViewController.swift
//  Gacha
//
//  Created by 木嶋将登 on 2015/05/01.
//  Copyright (c) 2015年 mycompany. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var number:Int!
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!
    @IBOutlet var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        number = Int(arc4random_uniform(10))

        // Do any additional setup after loading the view.
        NSLog("渡された値は...%dです", number)
        
        if number == 9{
            monsterImageView.image = UIImage(named: "monster010")
            backgroundImageView.image = UIImage(named: "bg_gold")
            label.text = "激レアモンスター"
            label.textColor = UIColor.orangeColor()
        }else if number > 7{
            monsterImageView.image = UIImage(named: "monster006")
            backgroundImageView.image = UIImage(named: "bg_red")
            label.text = "レアモンスター"
            label.textColor = UIColor.purpleColor()
        }else{
            monsterImageView.image = UIImage(named: "monster003")
            backgroundImageView.image = UIImage(named: "bg_blue")
            label.text = "普通のモンスター"
            label.textColor = UIColor.blueColor()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
