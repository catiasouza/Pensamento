//
//  QuotesViewController.swift
//  Pensamentos
//
//  Created by Cátia Souza on 01/12/19.
//  Copyright © 2019 Cátia Souza. All rights reserved.
//

import UIKit

class QuotesViewController: UIViewController {
    
    
    @IBOutlet weak var ivPhoto: UIImageView!
    @IBOutlet weak var ivPhotoBg: UIImageView!
    @IBOutlet weak var labelQuotes: UILabel!
    @IBOutlet weak var lbAutor: UILabel!
    @IBOutlet weak var ConstraintViewTop: NSLayoutConstraint!
    
    let quoteManager = QuoteManager()
    var timer: Timer?            // Classe usada pra agendar uma                                   execucao
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        prepareQuote()
    }
    
    func prepareQuote(){
        timer?.invalidate() // antes de chamar o 8seg eu invalido o anterior
        timer =  Timer.scheduledTimer(withTimeInterval: 8.0, repeats: true) { (timer) in
            //depois de 8seg quero q execute esse metodo
            self.showRandonQuote()
        }
        showRandonQuote()
    }
    
    func showRandonQuote(){
        let quote = quoteManager.getRandomQuote()
        labelQuotes.text = quote.quote
        lbAutor.text = quote.author
        ivPhoto.image = UIImage(named: quote.image)
        ivPhotoBg.image = ivPhoto.image
        
        labelQuotes.alpha = 0.0
        lbAutor.alpha = 0.0
        ivPhoto.alpha = 0.0
        ivPhotoBg.alpha = 0.0
        
        UIView.animate(withDuration: 2.5) {
            self.labelQuotes.alpha = 1.0
            self.lbAutor.alpha = 1.0
            self.ivPhoto.alpha = 1.0
            self.ivPhotoBg.alpha = 0.25
        }
        
    }
}
