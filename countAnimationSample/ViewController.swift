//
//  ViewController.swift
//  countAnimationSample
//
//  Created by cmStudent on 2022/01/14.
//

import UIKit

class ViewController: UIViewController {
    
    // UILabel
    var countUpLabel: CountAnimationLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpViews()
    }
    
    /// UILabelの設定
    private func setUpViews() {
        countUpLabel = CountAnimationLabel()
        let labelWidth = 200
        let labelHeight = 100
        countUpLabel.frame = CGRect(x: (Int(view.frame.size.width) - labelWidth) / 2 , y: (Int(view.frame.size.height) - labelHeight) / 2, width: labelWidth, height: labelHeight)
        countUpLabel.textColor = .black
        countUpLabel.textAlignment = .center
        countUpLabel.font = countUpLabel.font.withSize(100)
        view.addSubview(countUpLabel)
        // fromが初期値
        // toが最大値
        // durationがアニメーションする時間
        countUpLabel.animate(from: 0, to: 100, duration: 1.0)
    }
    
}

