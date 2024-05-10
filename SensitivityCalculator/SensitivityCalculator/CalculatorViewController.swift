//
//  CalculatorViewController.swift
//  SensitivityCalculator
//
//  Created by guoxun on 2023/4/11.
//

import UIKit


class CalculatorViewController: UIViewController {
    
    static let identifier = "CalculatorViewController"
    
    var low1: Double?
    var base1: Double?
    var high1: Double?
    
    var low2: Double?
    var base2: Double?
    var high2: Double?
    
    var low3: Double?
    var base3: Double?
    var high3: Double?
    
    var low4: Double?
    var base4: Double?
    var high4: Double?
    
    var low5: Double?
    var base5: Double?
    var high5: Double?
    
    var low6: Double?
    var base6: Double?
    var high6: Double?
    
    var low7: Double?
    var base7: Double?
    var high7: Double?
    
    var base8: Double?
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var lowButton1: UIButton!
    @IBOutlet weak var highButton1: UIButton!
    
    @IBOutlet weak var lowButton2: UIButton!
    @IBOutlet weak var highButton2: UIButton!
    
    
    @IBOutlet weak var lowButton3: UIButton!
    @IBOutlet weak var highButton3: UIButton!
    
    @IBOutlet weak var lowButton4: UIButton!
    @IBOutlet weak var highButton4: UIButton!
    
    @IBOutlet weak var lowButton5: UIButton!
    @IBOutlet weak var highButton5: UIButton!
    
    @IBOutlet weak var lowButton6: UIButton!
    @IBOutlet weak var highButton6: UIButton!
    
    @IBOutlet weak var lowButton7: UIButton!
    @IBOutlet weak var highButton7: UIButton!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.title = "🛵 💨💨"
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .secondarySystemBackground
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupConfig()
        
    }
    
    
    func setupConfig() {
        doneButton.layer.borderWidth = 2
        doneButton.layer.cornerRadius = 4
        doneButton.layer.borderColor = #colorLiteral(red: 0.8392156863, green: 0.1882352941, blue: 0.1921568627, alpha: 1).cgColor
        
        resultLabel.layer.borderColor = UIColor.black.cgColor
        resultLabel.layer.cornerRadius = 6
        resultLabel.layer.borderWidth = 2
        
//        textField.keyboardType = .decimalPad
        
        configButton(lowButton1)
        configButton(highButton1)
        configButton(lowButton2)
        configButton(highButton2)
        configButton(lowButton3)
        configButton(highButton3)
        configButton(lowButton4)
        configButton(highButton4)
        configButton(lowButton5)
        configButton(highButton5)
        configButton(lowButton6)
        configButton(highButton6)
        configButton(lowButton7)
        configButton(highButton7)
        
        lowButton1.layer.borderColor = #colorLiteral(red: 0.9058823529, green: 0.2980392157, blue: 0.2352941176, alpha: 1).cgColor
        lowButton1.setTitleColor(#colorLiteral(red: 0.9058823529, green: 0.2980392157, blue: 0.2352941176, alpha: 1), for: .normal)
        highButton1.layer.borderColor = #colorLiteral(red: 0.7529411765, green: 0.2235294118, blue: 0.168627451, alpha: 1).cgColor
        highButton1.setTitleColor(#colorLiteral(red: 0.7529411765, green: 0.2235294118, blue: 0.168627451, alpha: 1), for: .normal)
        
        lowButton2.layer.borderColor = #colorLiteral(red: 0.9529411765, green: 0.6117647059, blue: 0.07058823529, alpha: 1).cgColor
        lowButton2.setTitleColor(#colorLiteral(red: 0.9529411765, green: 0.6117647059, blue: 0.07058823529, alpha: 1), for: .normal)
        highButton2.layer.borderColor = #colorLiteral(red: 0.9529411765, green: 0.6117647059, blue: 0.07058823529, alpha: 1).cgColor
        highButton2.setTitleColor(#colorLiteral(red: 0.9529411765, green: 0.6117647059, blue: 0.07058823529, alpha: 1), for: .normal)
        
        lowButton3.layer.borderColor = #colorLiteral(red: 1, green: 0.7647058824, blue: 0.07058823529, alpha: 1).cgColor
        lowButton3.setTitleColor(#colorLiteral(red: 1, green: 0.7647058824, blue: 0.07058823529, alpha: 1), for: .normal)
        highButton3.layer.borderColor = #colorLiteral(red: 1, green: 0.7831090093, blue: 0, alpha: 1).cgColor
        highButton3.setTitleColor(#colorLiteral(red: 1, green: 0.7831090093, blue: 0, alpha: 1), for: .normal)
        
        lowButton4.layer.borderColor = #colorLiteral(red: 0.6392156863, green: 0.7960784314, blue: 0.2196078431, alpha: 1).cgColor
        lowButton4.setTitleColor(#colorLiteral(red: 0.6392156863, green: 0.7960784314, blue: 0.2196078431, alpha: 1), for: .normal)
        highButton4.layer.borderColor = #colorLiteral(red: 0.768627451, green: 0.8980392157, blue: 0.2196078431, alpha: 1).cgColor
        highButton4.setTitleColor(#colorLiteral(red: 0.768627451, green: 0.8980392157, blue: 0.2196078431, alpha: 1), for: .normal)
        
        lowButton5.layer.borderColor = #colorLiteral(red: 0.07058823529, green: 0.537254902, blue: 0.6549019608, alpha: 1).cgColor
        lowButton5.setTitleColor(#colorLiteral(red: 0.07058823529, green: 0.537254902, blue: 0.6549019608, alpha: 1), for: .normal)
        highButton5.layer.borderColor = #colorLiteral(red: 0.1607843137, green: 0.5019607843, blue: 0.7254901961, alpha: 1).cgColor
        highButton5.setTitleColor(#colorLiteral(red: 0.1607843137, green: 0.5019607843, blue: 0.7254901961, alpha: 1), for: .normal)
        
        
        lowButton6.layer.borderColor = #colorLiteral(red: 0.1529411765, green: 0.2352941176, blue: 0.4588235294, alpha: 1).cgColor
        lowButton6.setTitleColor(#colorLiteral(red: 0.1529411765, green: 0.2352941176, blue: 0.4588235294, alpha: 1), for: .normal)
        highButton6.layer.borderColor = #colorLiteral(red: 0.09803921569, green: 0.1647058824, blue: 0.337254902, alpha: 1).cgColor
        highButton6.setTitleColor(#colorLiteral(red: 0.09803921569, green: 0.1647058824, blue: 0.337254902, alpha: 1), for: .normal)
        
        lowButton7.layer.borderColor = #colorLiteral(red: 0.6, green: 0.5019607843, blue: 0.9803921569, alpha: 1).cgColor
        lowButton7.setTitleColor(#colorLiteral(red: 0.6, green: 0.5019607843, blue: 0.9803921569, alpha: 1), for: .normal)
        highButton7.layer.borderColor = #colorLiteral(red: 0.3411764706, green: 0.3450980392, blue: 0.7333333333, alpha: 1).cgColor
        highButton7.setTitleColor(#colorLiteral(red: 0.3411764706, green: 0.3450980392, blue: 0.7333333333, alpha: 1), for: .normal)
    }
    
    func configButton(_ button: UIButton) {
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 6
        button.isSelected = false
        button.setTitleColor(.white, for: .selected)
    }
    
    @IBAction func pressDone(_ sender: Any) {
        textField.resignFirstResponder()
        guard let base = self.base1 else { return }
        self.low1 = base * 0.5
        self.high1 = base * 1.5
        lowButton1.setTitle(String(format: "%.2f", base * 0.5), for: .normal)
        highButton1.setTitle(String(format: "%.2f", base * 1.5), for: .normal)

    }
    
    
    @IBAction func endInput(_ sender: UITextField) {
        if let base = sender.text {
            self.base1 = Double(base)
        }
    }
    
    
    @IBAction func pressLow1(_ sender: Any) {
        lowButton1.isSelected = true
        lowButton1.backgroundColor = #colorLiteral(red: 0.9058823529, green: 0.2980392157, blue: 0.2352941176, alpha: 1)
        highButton1.isSelected = false
        highButton1.backgroundColor = .clear
        
        if let low1 = self.low1,let base = self.base1 {
            self.base2 = (low1 + base) / 2
        }
        guard let base2 = self.base2 else { return }
        self.low2 = base2 * 0.5
        self.high2 = base2 * 1.5
        
        lowButton2.setTitle(String(format: "%.2f", base2 * 0.5), for: .normal)
        highButton2.setTitle(String(format: "%.2f", base2 * 1.5), for: .normal)
       
    }
    
    @IBAction func presshigh1(_ sender: Any) {
        highButton1.isSelected = true
        highButton1.backgroundColor = #colorLiteral(red: 0.7529411765, green: 0.2235294118, blue: 0.168627451, alpha: 1)
        lowButton1.isSelected = false
        lowButton1.backgroundColor = .clear
        
        if let high1 = self.high1,let base = self.base1 {
            self.base2 = (high1 + base) / 2
        }
        guard let base2 = self.base2 else { return }
        self.low2 = base2 * 0.5
        self.high2 = base2 * 1.5
        
        lowButton2.setTitle(String(format: "%.2f", base2 * 0.5), for: .normal)
        highButton2.setTitle(String(format: "%.2f", base2 * 1.5), for: .normal)
        
    }
    
    
    @IBAction func pressLow2(_ sender: Any) {
        lowButton2.isSelected = true
        lowButton2.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.6235294118, blue: 0.1215686275, alpha: 1)
        highButton2.isSelected = false
        highButton2.backgroundColor = .clear
        
        if let low2 = self.low2,let base = self.base2 {
            self.base3 = (low2 + base) / 2
        }

        guard let base3 = self.base3 else { return }
        self.low3 = base3 * 0.6
        self.high3 = base3 * 1.4

        lowButton3.setTitle(String(format: "%.2f", base3 * 0.6), for: .normal)
        highButton3.setTitle(String(format: "%.2f", base3 * 1.4), for: .normal)
    }
    
    @IBAction func presshigh2(_ sender: Any) {
        highButton2.isSelected = true
        highButton2.backgroundColor = #colorLiteral(red: 0.9529411765, green: 0.6117647059, blue: 0.07058823529, alpha: 1)
        lowButton2.isSelected = false
        lowButton2.backgroundColor = .clear
        
        if let high2 = self.high2,let base = self.base2 {
            self.base3 = (high2 + base) / 2
        }
        
        guard let base3 = self.base3 else { return }
        self.low3 = base3 * 0.6
        self.high3 = base3 * 1.4
        
        lowButton3.setTitle(String(format: "%.2f", base3 * 0.6), for: .normal)
        highButton3.setTitle(String(format: "%.2f", base3 * 1.4), for: .normal)
        
    }
    
    
    @IBAction func pressLow3(_ sender: Any) {
        lowButton3.isSelected = true
        lowButton3.backgroundColor = #colorLiteral(red: 1, green: 0.7647058824, blue: 0.07058823529, alpha: 1)
        highButton3.isSelected = false
        highButton3.backgroundColor = .clear
        
        if let low3 = self.low3,let base = self.base3 {
            self.base4 = (low3 + base) / 2
        }

        guard let base4 = self.base4 else { return }
        self.low4 = base4 * 0.7
        self.high4 = base4 * 1.3

        lowButton4.setTitle(String(format: "%.2f", base4 * 0.7), for: .normal)
        highButton4.setTitle(String(format: "%.2f", base4 * 1.3), for: .normal)
    }
    
    @IBAction func pressHigh3(_ sender: Any) {
        highButton3.isSelected = true
        highButton3.backgroundColor = #colorLiteral(red: 1, green: 0.7831090093, blue: 0, alpha: 1)
        lowButton3.isSelected = false
        lowButton3.backgroundColor = .clear
        
        if let high3 = self.high3,let base = self.base3 {
            self.base3 = (high3 + base) / 2
        }
        
        guard let base4 = self.base3 else { return }
        self.low4 = base4 * 0.7
        self.high4 = base4 * 1.3
        
        lowButton4.setTitle(String(format: "%.2f", base4 * 0.7), for: .normal)
        highButton4.setTitle(String(format: "%.2f", base4 * 1.3), for: .normal)
    }
    
    
    @IBAction func pressLow4(_ sender: Any) {
        lowButton4.isSelected = true
        lowButton4.backgroundColor = #colorLiteral(red: 0.6392156863, green: 0.7960784314, blue: 0.2196078431, alpha: 1)
        highButton4.isSelected = false
        highButton4.backgroundColor = .clear
        
        if let low4 = self.low4,let base = self.base4 {
            self.base5 = (low4 + base) / 2
        }

        guard let base5 = self.base5 else { return }
        self.low5 = base5 * 0.8
        self.high5 = base5 * 1.2

        lowButton5.setTitle(String(format: "%.2f", base5 * 0.8), for: .normal)
        highButton5.setTitle(String(format: "%.2f", base5 * 1.2), for: .normal)
        
    }
    
    @IBAction func pressHigh4(_ sender: Any) {
        highButton4.isSelected = true
        highButton4.backgroundColor = #colorLiteral(red: 0.768627451, green: 0.8980392157, blue: 0.2196078431, alpha: 1)
        lowButton4.isSelected = false
        lowButton4.backgroundColor = .clear
        
        if let high4 = self.high4,let base = self.base4 {
            self.base5 = (high4 + base) / 2
        }
        
        guard let base5 = self.base5 else { return }
        self.low5 = base5 * 0.8
        self.high5 = base5 * 1.2
        
        lowButton5.setTitle(String(format: "%.2f", base5 * 0.8), for: .normal)
        highButton5.setTitle(String(format: "%.2f", base5 * 1.2), for: .normal)
    }
    
    @IBAction func pressLow5(_ sender: Any) {
        lowButton5.isSelected = true
        lowButton5.backgroundColor = #colorLiteral(red: 0.07058823529, green: 0.537254902, blue: 0.6549019608, alpha: 1)
        highButton5.isSelected = false
        highButton5.backgroundColor = .clear
        
        if let low5 = self.low5,let base = self.base5 {
            self.base6 = (low5 + base) / 2
        }

        guard let base6 = self.base6 else { return }
        self.low6 = base6 * 0.9
        self.high6 = base6 * 1.1

        lowButton6.setTitle(String(format: "%.2f", base6 * 0.9), for: .normal)
        highButton6.setTitle(String(format: "%.2f", base6 * 1.1), for: .normal)
    }
    
    
    @IBAction func pressHigh5(_ sender: Any) {
        highButton5.isSelected = true
        highButton5.backgroundColor = #colorLiteral(red: 0.1607843137, green: 0.5019607843, blue: 0.7254901961, alpha: 1)
        lowButton5.isSelected = false
        lowButton5.backgroundColor = .clear
        
        if let high5 = self.high5,let base = self.base5 {
            self.base6 = (high5 + base) / 2
        }
        
        guard let base6 = self.base6 else { return }
        self.low6 = base6 * 0.9
        self.high6 = base6 * 1.1
        
        lowButton6.setTitle(String(format: "%.2f", base6 * 0.9), for: .normal)
        highButton6.setTitle(String(format: "%.2f", base6 * 1.1), for: .normal)
    }
    
    
    @IBAction func pressLow6(_ sender: Any) {
        lowButton6.isSelected = true
        lowButton6.backgroundColor = #colorLiteral(red: 0.1529411765, green: 0.2352941176, blue: 0.4588235294, alpha: 1)
        highButton6.isSelected = false
        highButton6.backgroundColor = .clear
        
        if let low6 = self.low6,let base = self.base6 {
            self.base7 = (low6 + base) / 2
        }

        guard let base7 = self.base7 else { return }
        self.low7 = base7 * 0.95
        self.high7 = base7 * 1.05

        lowButton7.setTitle(String(format: "%.2f", base7 * 0.95), for: .normal)
        highButton7.setTitle(String(format: "%.2f", base7 * 1.05), for: .normal)
    }
    
    @IBAction func pressHigh6(_ sender: Any) {
        highButton6.isSelected = true
        highButton6.backgroundColor = #colorLiteral(red: 0.09803921569, green: 0.1647058824, blue: 0.337254902, alpha: 1)
        lowButton6.isSelected = false
        lowButton6.backgroundColor = .clear
        
        if let high6 = self.high6,let base = self.base6 {
            self.base7 = (high6 + base) / 2
        }
        
        guard let base7 = self.base7 else { return }
        self.low7 = base7 * 0.95
        self.high7 = base7 * 1.05
        
        lowButton7.setTitle(String(format: "%.2f", base7 * 0.95), for: .normal)
        highButton7.setTitle(String(format: "%.2f", base7 * 1.05), for: .normal)
    }
    
    
    @IBAction func pressLow7(_ sender: Any) {
        lowButton7.isSelected = true
        lowButton7.backgroundColor = #colorLiteral(red: 0.6, green: 0.5019607843, blue: 0.9803921569, alpha: 1)
        highButton7.isSelected = false
        highButton7.backgroundColor = .clear
        
        if let low7 = self.low7,let base = self.base7 {
            self.base8 = (low7 + base) / 2
        }
        
        guard let base8 = self.base8 else { return }
        resultLabel.text = "🌈Perfect Sensitivity: " + String(format: "%.2f", base8)
        
    }
    
    @IBAction func pressHigh7(_ sender: Any) {
        highButton7.isSelected = true
        highButton7.backgroundColor = #colorLiteral(red: 0.3411764706, green: 0.3450980392, blue: 0.7333333333, alpha: 1)
        lowButton7.isSelected = false
        lowButton7.backgroundColor = .clear
        
        if let high7 = self.high7,let base = self.base7 {
            self.base8 = (high7 + base) / 2
        }
        
        guard let base8 = self.base8 else { return }
        resultLabel.text = "🥗Perfect Sensitivity: " + String(format: "%.2f", base8)
    }
    
    
    
}

