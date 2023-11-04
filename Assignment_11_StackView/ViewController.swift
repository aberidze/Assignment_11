//
//  ViewController.swift
//  Assignment_11_StackView
//
//  Created by Macbook Air 13 on 04.11.23.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    @IBOutlet private weak var mainStackView: UIStackView!
    @IBOutlet private weak var headerStackView: UIStackView!
    @IBOutlet private weak var coffeeImage: UIImageView!
    @IBOutlet weak var coffeeNameLabel: UILabel!
    @IBOutlet weak var addedIngredientLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var descriptionText: UILabel!
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var buyNowButton: UIButton!
    @IBOutlet weak var smallSizeButton: UIButton!
    @IBOutlet weak var mediumSizeButton: UIButton!
    @IBOutlet weak var largeSizeButton: UIButton!
    @IBOutlet weak var priceLabel: UILabel!
    
    private let cappucino = Coffee(
        imageName: "cappucino_image",
        name: "Cappucino",
        addedIngredient: "Chocolate",
        rating: 4.8,
        reviewNumber: 230,
        description: "A cappuccino is an espresso-based coffee drink that is traditionally prepared with steamed milk foam. Variations of the drink involve the use of cream instead of milk, using non-dairy milk substitutes and flavoring with cinnamon or chocolate powder.",
        price: 4.53
    )
    
    private let espresso = Coffee(
        imageName: "espresso_image",
        name: "Espresso",
        addedIngredient: "Chocolate",
        rating: 4.7,
        reviewNumber: 312,
        description: "Espresso is one of the most popular coffee-brewing methods, of Italian origin. The French also made a significant contribution to the invention of the first coffee makers, predecessors of today's espresso machines, and generally to the café culture.",
        price: 2.75
    )
    
    private let latte = Coffee(
        imageName: "latte_image",
        name: "Latte",
        addedIngredient: "Cinnamon",
        rating: 4.7,
        reviewNumber: 402,
        description: "Caffè latte, often shortened to just latte in English, is a coffee drink of Italian origin made with espresso and steamed milk.",
        price: 4.75
    )
    
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    
    // MARK: - Private Methods
    private func setupUI() {
        setCustomSpacings()
        makeCoffeeImageRounded()
        setSizeButtonsBorders()
        makeBuyNowButtonRounded()
        updateCoffeeData(latte)
    }
    
    private func setCustomSpacings() {
        mainStackView.setCustomSpacing(25.0, after: headerStackView)
        mainStackView.setCustomSpacing(8.0, after: coffeeNameLabel)
        mainStackView.setCustomSpacing(12.0, after: descriptionLabel)
        mainStackView.setCustomSpacing(12.0, after: sizeLabel)
    }
    
    private func makeCoffeeImageRounded() {
        coffeeImage.clipsToBounds = true
        coffeeImage.layer.cornerRadius = 16
    }
    
    private func setSizeButtonsBorders() {
        smallSizeButton.layer.borderColor = UIColor(named: "systemGray6")?.cgColor
        smallSizeButton.layer.borderWidth = 1
        smallSizeButton.clipsToBounds = true
        smallSizeButton.layer.cornerRadius = 12
        
        mediumSizeButton.layer.borderColor = UIColor(named: "systemGray6")?.cgColor
        mediumSizeButton.layer.borderWidth = 1
        mediumSizeButton.clipsToBounds = true
        mediumSizeButton.layer.cornerRadius = 12

        largeSizeButton.layer.borderColor = UIColor(named: "systemGray6")?.cgColor
        largeSizeButton.layer.borderWidth = 1
        largeSizeButton.clipsToBounds = true
        largeSizeButton.layer.cornerRadius = 12
    }
    
    private func makeBuyNowButtonRounded() {
        buyNowButton.clipsToBounds = true
        buyNowButton.layer.cornerRadius = 16
    }
    
    private func updateCoffeeData(_ coffee: Coffee) {
        coffeeImage.image = UIImage(named: coffee.imageName)
        coffeeNameLabel.text = coffee.name
        addedIngredientLabel.text = "with \(coffee.addedIngredient)"
        ratingLabel.text = "\(coffee.rating) (\(coffee.reviewNumber))"
        descriptionText.text = coffee.description
        priceLabel.text = "$ \(coffee.price)"
    }
}

