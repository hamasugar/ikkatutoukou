//
//  tagViewController.swift
//  ikkatuPost
//
//  Created by user on 2018/08/23.
//  Copyright © 2018年 hamasugartanaka. All rights reserved.
//

import UIKit

class tagViewController: UIViewController {
    

    
    
    @IBOutlet weak var tag1: UILabel!
    
    @IBOutlet weak var tag2: UILabel!
    
    
    @IBOutlet weak var tag3: UILabel!
    
    @IBOutlet weak var sampleImage: UIImageView!
    
    var  image2:UIImage!
    
   
    @IBOutlet weak var tagButton1: UIButton!
    
    @IBOutlet weak var tagButton2: UIButton!
    
    @IBOutlet weak var tagButton3: UIButton!
    
    
    @IBAction func tagButton1(_ sender: Any) {
        
        
        if self.tagButton1.backgroundColor == UIColor.red{
            
            tagButton1.backgroundColor = UIColor.brown
            
        }
        else{
            tagButton1.backgroundColor = UIColor.red
        }
        
        
        
        
    }
    
    @IBAction func tagButton2(_ sender: Any) {
        
        if self.tagButton2.backgroundColor == UIColor.red{
            
            tagButton2.backgroundColor = UIColor.brown
            
        }
        else{
            tagButton2.backgroundColor = UIColor.red
        }
        
    }
    
    
    @IBAction func tagButton3(_ sender: Any) {
        
        if self.tagButton3.backgroundColor == UIColor.red{
            
            tagButton3.backgroundColor = UIColor.brown
            
        }
        else{
            tagButton3.backgroundColor = UIColor.red
        }
        
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print ("fffffffffffffffffffffffffffff")
        sampleImage.contentMode = .scaleAspectFit
        sampleImage.image = image2
        
        self.tagButton1.layer.masksToBounds = true
        self.tagButton1.layer.cornerRadius = 15.0
        self.tagButton1.backgroundColor = UIColor.red
        
        self.tagButton2.layer.masksToBounds = true
        self.tagButton2.layer.cornerRadius = 15.0
        self.tagButton2.backgroundColor = UIColor.red
        
        self.tagButton3.layer.masksToBounds = true
        self.tagButton3.layer.cornerRadius = 15.0
        self.tagButton3.backgroundColor = UIColor.red
       
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func goSubmitButton(_ sender: Any) {
        
        let hash = "#"
        if self.tagButton1.backgroundColor == UIColor.red{
             UserDefaults.standard.set(hash+"woman", forKey: "tag1")
            }
        else{
            UserDefaults.standard.set("", forKey: "tag1")
        }
        
        if self.tagButton2.backgroundColor == UIColor.red{
            UserDefaults.standard.set(hash+"cute", forKey: "tag2")
        }
        else{
            UserDefaults.standard.set("", forKey: "tag2")
        }
        
        
        if self.tagButton3.backgroundColor == UIColor.red{
            UserDefaults.standard.set(hash+"beautiful", forKey: "tag3")
        }
        else{
            UserDefaults.standard.set("", forKey: "tag3")
        }
        
        
        performSegue(withIdentifier: "goSubmit", sender: nil)
        
    }
    
    
    @IBAction func getTag(_ sender: Any) {
        
        
        
        self.tag1.text = "woman"
        self.tag2.text = "cute"
        self.tag3.text = "beautiful"
        
    
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goSubmit"{
        
        let nextVC:SubmitViewController = segue.destination as! SubmitViewController
        
        nextVC.image = self.image2
            
        }
        
        if segue.identifier == "goEdit"{
            
            let nextVC:editViewController = segue.destination as! editViewController
            
            nextVC.image = self.image2
            
            
        }
        
        
    }
    
    
    
    @IBAction func goEditButton(_ sender: Any) {
        
        performSegue(withIdentifier: "goEdit", sender: nil)
        
        
        
        
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
