//
//  firstViewController.swift
//  ikkatuPost
//
//  Created by user on 2018/08/23.
//  Copyright © 2018年 hamasugartanaka. All rights reserved.
//

import UIKit

class firstViewController: UIViewController {
    
    
    let image1 = UIImage(named:"ppppp")
    let image2 = UIImage(named:"aaaaa")
    let image3 = UIImage(named:"ttttt")
    
    
    var imageView1:UIImageView = UIImageView()
    var imageView2:UIImageView = UIImageView()
    var imageView3:UIImageView = UIImageView()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let yoko = self.view.frame.size.width
       
        imageView1.frame = CGRect(x: 50, y: 100, width: 275, height: 467)
        imageView2.frame = CGRect(x: yoko+50, y: 100, width: 275, height: 467)
        imageView3.frame = CGRect(x: yoko+yoko+50, y: 100, width: 275, height: 467)
        
        imageView1.image = image1
        imageView2.image = image2
        imageView3.image = image3
        
        self.view.addSubview(imageView1)
         self.view.addSubview(imageView2)
         self.view.addSubview(imageView3)
        
        sleep (1)
        animate()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func animate(){
        
        
        print ("ssssssssssss")
        UIView.animate(withDuration: 1.0, delay: 0.0, animations: {
            
            () -> Void in
            
            self.imageView1.center.x -= self.view.frame.size.width
            self.imageView2.center.x -= self.view.frame.size.width
            self.imageView3.center.x -= self.view.frame.size.width
            
            }, completion:{
            
            (Bool) -> Void in
            
            if self.imageView3.center.x>0 {
                sleep(1)
                self.animate()
            }
                
            else{
                
                self.performSegue(withIdentifier: "goLogin", sender: nil)
                
            }
            
        
        
        
}
        
)

}
    
    
}
