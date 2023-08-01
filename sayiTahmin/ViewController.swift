//
//  ViewController.swift
//  sayiTahmin
//
//  Created by Onurcan Işık on 1.08.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Ana Sayfa"
    }

    @IBAction func startBtn(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let gidilicekSayfa = storyBoard.instantiateViewController(identifier: "sayfaB") as secondVC
        
        self.navigationController?.pushViewController(gidilicekSayfa, animated: true)
    }
    
}

