//
//  ViewController.swift
//  Homework5
//
//  Created by Doğukan Akyüz on 22.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var labelGirilenSayi: UILabel!
    
    @IBOutlet weak var labelSonuc: UILabel!
    
    var girilen:String = ""
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hepsiniSil()
    }
    
    func hepsiniSil(){
        
        girilen = ""
        labelGirilenSayi.text = ""
        labelSonuc.text = ""
    }
    
    
    @IBAction func buttonHepsiniSil(_ sender: Any) {
        hepsiniSil()
    }
    
    @IBAction func buttonSil(_ sender: Any) {
        
        if !girilen.isEmpty {
            girilen.removeLast()
            labelGirilenSayi.text = girilen
        }
    }
    
    
    func girilenEkle(sayı: String){
        girilen = girilen + sayı
        labelGirilenSayi.text = girilen
    }
    
    @IBAction func buttonTopla(_ sender: Any) {
        girilenEkle(sayı: "+")
    }
    
    
    
    @IBAction func buttonEsittir(_ sender: Any) {
        let expression = NSExpression(format: girilen)
        let sonuc = expression.expressionValue(with: nil, context: nil) as! Int
        labelSonuc.text = String(sonuc)
        
    }
    
   
    
    
   @IBAction func button0(_ sender: Any) {
       girilenEkle(sayı: "0")
    }
    
    
    @IBAction func button1(_ sender: Any) {
        girilenEkle(sayı: "1")
    }
    
    
    
    @IBAction func button2(_ sender: Any) {
        girilenEkle(sayı: "2")
    }
    
    
    @IBAction func button3(_ sender: Any) {
        girilenEkle(sayı: "3")
    }
    
    
    @IBAction func button4(_ sender: Any) {
        girilenEkle(sayı: "4")
    }
    
    
    @IBAction func button5(_ sender: Any) {
        girilenEkle(sayı: "5")
    }
    
    
    
    @IBAction func button6(_ sender: Any) {
        girilenEkle(sayı: "6")
    }
    
    
    @IBAction func button7(_ sender: Any) {
        girilenEkle(sayı: "7")
    }
    
    
    @IBAction func button8(_ sender: Any) {
        girilenEkle(sayı: "8")
    }
    
    
    @IBAction func button9(_ sender: Any) {
        girilenEkle(sayı: "9")
    }
    
    
    
    
    
}

