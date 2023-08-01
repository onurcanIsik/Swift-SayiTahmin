//
//  secondVC.swift
//  sayiTahmin
//
//  Created by Onurcan Işık on 1.08.2023.
//

import UIKit

class secondVC: UIViewController {
    
    
    @IBOutlet weak var kalanHak: UILabel!
    @IBOutlet weak var yardimTxt: UILabel!
    @IBOutlet weak var txtForm: UITextField!
    
    var rasgeleSayi:Int?
    var kalanHakkım = 5;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rasgeleSayi = Int.random(in: 1..<100)
        self.navigationItem.title = "Tahmin Ekranı"
        
    }
    

    @IBAction func tahminEtBtn(_ sender: Any) {
        yardimTxt.isHidden = false;
        kalanHakkım -= 1;
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let gidilecekVC = storyBoard.instantiateViewController(identifier: "sayfaC") as thirdVC
        
        
        if let veri = txtForm.text {
            if let tahmin = Int(veri) {
                
                if kalanHakkım != 0 {
                    if tahmin == rasgeleSayi {
                        self.navigationController?.pushViewController(gidilecekVC, animated: true)
                    }
                    if tahmin > rasgeleSayi! {
                        yardimTxt.text = "Azalt"
                        kalanHak.text = "Kalan Hak: \(kalanHakkım)"
                        
                        
                    }
                    if tahmin < rasgeleSayi! {
                        yardimTxt.text = "Arttır"
                        kalanHak.text = "Kalan Hak: \(kalanHakkım)"
                        
                    }
                    
                } else {
                    
                }
                
            }
            
        }
        
        
    }
    

}
