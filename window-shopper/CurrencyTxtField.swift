//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by peretz on 2017-11-07.
//  Copyright © 2017 peretz. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size:CGFloat=20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2)-size/2, width:size, height: size))
        currencyLbl.backgroundColor=#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 0.7970890411)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor=#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius=5.0
        currencyLbl.clipsToBounds=true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text=formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    func customizeView() {
        backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.1845034247)
        layer.cornerRadius=5.0
        textAlignment = .center
        if let p=placeholder {
            let place = NSAttributedString(string:p,attributes:[.foregroundColor:#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder=place
            textColor=#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
        }
        let place = NSAttributedString(string:placeholder!,attributes:[.foregroundColor:#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        attributedPlaceholder=place
        textColor=#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
}
