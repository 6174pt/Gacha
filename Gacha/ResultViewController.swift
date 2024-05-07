//
//  ResultViewController.swift
//  Gacha
//
//  Created by Honoka Nishiyama on 2024/04/30.
//

import UIKit

class ResultViewController: UIViewController {
    
//    乱数を入れるInt型変数
    var number:Int = 0
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var characterImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        number = Int.random(in: 0...9)

//        if文の場合
//        if number == 9{
//            characterImageView.image = UIImage(named: "IoTMesh")
//            backgroundImageView.image = UIImage(named: "bgBlue")
//        } else if number >= 7{
//            characterImageView.image = UIImage(named: "camera")
//            backgroundImageView.image = UIImage(named: "bgGreen")
//        } else {
//            characterImageView.image = UIImage(named: "iphone")
//            backgroundImageView.image = UIImage(named: "bgRed")
//        }
        
//        switch文の場合
        switch number{
        case 9:
            characterImageView.image = UIImage(named: "IoTMesh")
            backgroundImageView.image = UIImage(named: "bgBlue")
        case 7, 8:
            characterImageView.image = UIImage(named: "camera")
            backgroundImageView.image = UIImage(named: "bgGreen")
        case 0..<7:
            characterImageView.image = UIImage(named: "iphone")
            backgroundImageView.image = UIImage(named: "bgRed")
        default:
            print("error")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.characterImageView.center = self.view.center
        UIView.animate(withDuration: 1.0, delay: 0, options: [.curveEaseIn, .autoreverse, .repeat], animations: {self.characterImageView.center.y += 10.0
        }){ _ in
            self.characterImageView.center.y -= 10.0
        }
    }
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
    }

}
