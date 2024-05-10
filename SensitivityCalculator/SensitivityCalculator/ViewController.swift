//
//  ViewController.swift
//  SensitivityCalculator
//
//  Created by guoxun on 2023/4/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var helpButton: UIButton!
    let dic = [1:"开始计算",2:"Start Calculating",3:"計算を開始する",4:"начать расчет",5:"empezar a calcular",6:"เริ่มคำนวณ"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupRandomImage()
        setupButtonStyle()
        setupHelpButton()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setupRandomImage()
        setupButtonStyle()
    }
    
    func setupRandomImage() {
        let randomInt = Int.random(in: 1...11)
        image.image = UIImage(named: "\(randomInt)")
    }
    
    
    func setupButtonStyle() {
        let randomInt = Int.random(in: 1...6)
        button.setTitle(dic[randomInt], for: .normal)
        button.setTitleColor(.secondaryLabel, for: .normal)
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.systemGray.cgColor
        button.layer.cornerRadius = 8
    
    }
    
    func setupHelpButton() {
        let yourAttributes: [NSAttributedString.Key: Any] = [
              .font: UIFont.systemFont(ofSize: 14),
              .underlineStyle: NSUnderlineStyle.single.rawValue
          ] // .
        let attributeString = NSMutableAttributedString(
               string: "如何使用?",
               attributes: yourAttributes
            )
        
        helpButton.setAttributedTitle(attributeString, for: .normal)
    }

    @IBAction func pushButton(_ sender: Any) {
//        let CalculatorVC = CalculatorViewController.initializeFromStoryboard()
//        navigationController?.pushViewController(CalculatorVC, animated: true)
        self.performSegue(withIdentifier: "showCal", sender: self)
    }
    
    @IBAction func helpButton(_ sender: Any) {
        if let url = URL(string: "https://www.bilibili.com/video/BV1Ut411j7Wg") {
            UIApplication.shared.open(url)
        }
        
    }
    
}

