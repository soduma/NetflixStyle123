//
//  MainCollectionViewCell.swift
//  NetflixStyle
//
//  Created by 장기화 on 2021/12/05.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    let baseStackView = UIStackView()
    let menuStackView = UIStackView()
    
    let tvButton = UIButton()
    let movieButton = UIButton()
    let categoryButton = UIButton()
    
    let imageView = UIImageView()
    let descriptionLabel = UILabel()
    let contentStackView = UIStackView()
    
    let plusButton = UIButton()
    let playButton = UIButton()
    let infoButton = UIButton()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        [baseStackView, menuStackView].forEach {
            contentView.addSubview($0)
        }
        
        //base
        baseStackView.axis = .vertical
        baseStackView.alignment = .center
        baseStackView.distribution = .fillProportionally
        baseStackView.spacing = 5
        
        baseStackView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        [imageView, descriptionLabel, contentStackView].forEach {
            baseStackView.addArrangedSubview($0)
        }
        
        //imageview
        imageView.contentMode = .scaleAspectFit
        imageView.snp.makeConstraints {
            $0.width.top.leading.trailing.equalToSuperview()
            $0.height.equalTo(imageView.snp.width)
        }
        
        //description
        descriptionLabel.font = .systemFont(ofSize: 13)
        descriptionLabel.textColor = .white
        descriptionLabel.sizeToFit()
        
        //content stackview
        contentStackView.axis = .horizontal
        contentStackView.alignment = .center
        contentStackView.distribution = .equalCentering
        contentStackView.spacing = 20
        
        [plusButton, infoButton].forEach {
            $0.titleLabel?.font = .systemFont(ofSize: 13)
            $0.setTitleColor(.white, for: .normal)
            $0.imageView?.tintColor = .white
            $0.adjustVerticalLayout(5)
        }
        
        plusButton.setTitle("내가 찜한 콘텐츠", for: .normal)
        plusButton.setImage(UIImage(systemName: "plus"), for: .normal)
        plusButton.addTarget(self, action: #selector(tapPlusButton), for: .touchUpInside)

        infoButton.setTitle("정보", for: .normal)
        infoButton.setImage(UIImage(systemName: "info.circle"), for: .normal)
        infoButton.addTarget(self, action: #selector(tapInfoButton), for: .touchUpInside)
        
        playButton.setTitle("🐮 재생", for: .normal)
        playButton.setTitleColor(.black, for: .normal)
        playButton.backgroundColor = .white
        playButton.layer.cornerRadius = 3
        playButton.snp.makeConstraints {
            $0.width.equalTo(90)
            $0.height.equalTo(30)
        }
        playButton.addTarget(self, action: #selector(tapPlayButton), for: .touchUpInside)
        [plusButton, playButton, infoButton].forEach {
            contentStackView.addArrangedSubview($0)
        }

        contentStackView.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(30)
//            $0.bottom.equalTo(baseStackView)
            $0.height.equalTo(60)
        }
        
        //menu
        menuStackView.axis = .horizontal
        menuStackView.alignment = .center
        menuStackView.distribution = .equalSpacing
        menuStackView.spacing = 20
        
        [tvButton, movieButton, categoryButton].forEach {
            menuStackView.addArrangedSubview($0)
            $0.setTitleColor(.white, for: .normal)
            $0.layer.shadowColor = UIColor.black.cgColor
            $0.layer.shadowOpacity = 1
            $0.layer.shadowRadius = 3
        }
        
        tvButton.setTitle("TV 프로그램", for: .normal)
        movieButton.setTitle("영화", for: .normal)
        categoryButton.setTitle("카테고리 🐤", for: .normal)
        
        tvButton.addTarget(self, action: #selector(tapTvButton), for: .touchUpInside)
        movieButton.addTarget(self, action: #selector(tapMovieButton), for: .touchUpInside)
        categoryButton.addTarget(self, action: #selector(tapCategoryButton), for: .touchUpInside)

        menuStackView.snp.makeConstraints {
            $0.top.equalTo(baseStackView)
            $0.leading.trailing.equalToSuperview().inset(30)
        }
    }
    
    @objc func tapTvButton(sender: UIButton!) {
        print("tv버튼 탭")
    }
    
    @objc func tapMovieButton(sender: UIButton!) {
        print("movie버튼 탭")
    }
    
    @objc func tapCategoryButton(sender: UIButton!) {
        print("category버튼 탭")
    }
    
    @objc func tapPlusButton(sender: UIButton!) {
        print("plus버튼 탭")
    }
    
    @objc func tapInfoButton(sender: UIButton!) {
        print("info버튼 탭")
    }
    
    @objc func tapPlayButton(sender: UIButton!) {
        print("play버튼 탭")
    }
}
