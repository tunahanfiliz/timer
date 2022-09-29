//
//  ViewController.swift
//  tekrarJEST
//
//  Created by Ios Developer on 29.09.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Timerrr: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    var  timer1 = Timer()// belli bi zaman sonra uyarı mesajı yollar
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 10
        Timerrr.text = "timer \(counter)"
        timer1 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timefunc), userInfo: nil, repeats: true)
        //planlanmış timer kaç saniyede bir counteri azaltalım işlemi. ve hangifonksiyonu çagıracagımızı sorar.      timeInterval zamanı azaltma işlemidir.
        
        
    }
    @objc func timefunc(){
        
        Timerrr.text = "timer \(counter)" // güncel olan sayıyı göster
        counter -= 1
        if counter == 0 { // sadece kücüktür dersen sıfırı da görürsün
            timer1.invalidate() // timeri durdurma aracı
            Timerrr.text = "time is over"
        }
        
        
    }
    
        
        
        
    }


