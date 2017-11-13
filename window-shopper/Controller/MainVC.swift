//
//  ViewController.swift
//  window-shopper
//
//  Created by peretz on 2017-11-07.
//  Copyright © 2017 peretz. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: UITextField!
    @IBOutlet weak var priceTxt: UITextField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let calcBtn = UIButton(frame: CGRect(x:0,y:0,width:view.frame.size.width,height:60))
        calcBtn.backgroundColor=#colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        wageTxt.inputAccessoryView=calcBtn
        priceTxt.inputAccessoryView=calcBtn
        resultLbl.isHidden=true
        hoursLbl.isHidden=true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func calculate() {
        if let wageTxt=wageTxt.text, let priceTxt=priceTxt.text{
            if let wage=Double(wageTxt),let price=Double(priceTxt){
                view.endEditing(true)
                resultLbl.isHidden=false
                hoursLbl.isHidden=false
                resultLbl.text="\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
    
    @IBAction func clearButtonPressed(_ sender: Any) {
        resultLbl.isHidden=true
        hoursLbl.isHidden=true
        wageTxt.text=""
        priceTxt.text=""
    }
}
