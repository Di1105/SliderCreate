//
//  ViewController.swift
//  SliderCreate
//
//  Created by Dilara Elçioğlu on 23.12.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    var slider = UISlider()
    var label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI(){
        view.addSubview(slider)
        view.addSubview(label)
        
        slider.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.equalTo(20)
            make.width.equalTo(200)
        }
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.isContinuous = true
        slider.tintColor = UIColor.green
        slider.minimumValue = 18
        slider.maximumValue = 70
        slider.addTarget(self, action: #selector(ageChanged), for: .valueChanged)
        slider.value = 23 // ilk değeri atamak için
        
        //2şer 2şer arttırmak için ne gerekli?
        
        label.snp.makeConstraints { make in
            make.top.equalTo(slider.snp.bottom).offset(20)
            make.height.equalTo(40)
            make.width.equalTo(100)
            make.centerXWithinMargins.equalToSuperview()
        }
        label.backgroundColor = .lightGray
        label.font = label.font.withSize(32)
        label.textAlignment = .center
        label.text = String(slider.value) // ilk değeri göstermek için
        
        
    }
    @objc func ageChanged (){
        label.text = String(Int(slider.value)) //manuel değişen değeri göstermek için
    }


}

