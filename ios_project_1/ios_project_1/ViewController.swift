//
//  ViewController.swift
//  ios_project_1
//
//  Created by Nikolay Volnikov on 01.05.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    private lazy var gradientLayer: CAGradientLayer = {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [#colorLiteral(red: 0.4493157268, green: 0.6697803736, blue: 0.8116814494, alpha: 1).cgColor, #colorLiteral(red: 0.9495657086, green: 0.3830881715, blue: 0.2848276794, alpha: 1).cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
        gradientLayer.cornerRadius = 10

        gradientLayer.shadowColor = UIColor.black.cgColor
        gradientLayer.shadowOpacity = 1
        gradientLayer.shadowOffset = CGSize(width: 0, height: 10)
        gradientLayer.shadowRadius = 10

        return gradientLayer
    }()

    private lazy var blockView: UIView = {
        let view = UIView()
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        view.addSubview(blockView)
        blockView.snp.makeConstraints {
            $0.width.height.equalTo(100)
            $0.centerY.equalToSuperview()
            $0.leading.equalToSuperview().offset(100)
        }
        setupGradient()
    }

    // MARK: - Private methods

    private func setupGradient() {
        blockView.layer.addSublayer(gradientLayer)
        gradientLayer.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    }
}
