//
//  ViewController.swift
//  Algorithm App
//
//  Created by Shepherd, Kayden on 10/23/18.
//  Copyright © 2018 Ctec. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
}
    @IBOutlet weak var algorithmText: UILabel!
    
    weak var SwiftImage: UIImageView!
        

    
    
private func formatAlgorithm() -> Void

{
    let title  : String = "How to Tax Fraud"
    let stepOne : String = "First fool the IRS"
    let stepTwo : String = "Fake your own death fo the insurance money"
    let stepThree : String = "Run to cuba"
    let stepFour : String = "Then You Commit Tax Fraud"

    let algorithm = [stepOne, stepTwo, stepThree, stepFour]
    
    let attributesdictionary = [NSAttributedStringKey.font : algorithmText.font]
    let fullAttributedString = NSMutableAttributedString(string: title, attributes: attributesdictionary)
    
    for step in algorithm
    {
        let bullet : String = "pp"
        let formattedStep :String = "\n\(bullet) \(step)"
        let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
        let outlineStyle = createOutlineStyle()
        
        attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : outlineStyle], range: NSMakeRange(0,attributedStringStep.length))
        
        fullAttributedString.append(attributedStringStep)
    }
    algorithmText.attributedText = fullAttributedString
    }
    private func createOutlineStyle() -> NSParagraphStyle
{
    let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
    outlineStyle.alignment = .left
    outlineStyle.defaultTabInterval = 15
    outlineStyle.firstLineHeadIndent = 20
    outlineStyle.headIndent = 35
    
    return outlineStyle
}
}
