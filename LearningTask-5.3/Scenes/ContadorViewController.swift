//
//  ViewController.swift
//  LearningTask-5.3
//
//  Created by rafael.rollo on 12/03/2022.
//

import UIKit

class ContadorViewController: UIViewController {

    var contador: Contador? {
        didSet {
            guard isViewLoaded, let contador = contador else { return }
            atualizaView(contador: contador)
        }
    }
    
    
    @IBOutlet weak var contadorLabel: UILabel!
    @IBOutlet weak var padraoIncrementoLabel: UILabel!
    @IBOutlet weak var incrementeStepper: UIStepper!
   
   
    override func viewDidLoad() {
        super.viewDidLoad()
        if let contador = contador {
            atualizaView(contador: contador)
        }
    }

    @IBAction func contadorAumentou(_ sender: UIButton) {
        contador?.aumentarContador()
    }
    @IBAction func contadorDiminuiu(_ sender: UIButton) {
        contador?.diminuirContador()
    }
    @IBAction func resetButton(_ sender: UIButton) {
        contador?.resetContador()
        
    }
    @IBAction func contadorMudou(_ sender: UIStepper) {
        contador?.numeroContador = Int(sender.value)
    }
    
    func atualizaView(contador: Contador) {
        contadorLabel.text = String(describing: contador.numeroIncremento)
        padraoIncrementoLabel.text = String(describing: contador.numeroContador)
        incrementeStepper.value = Double(contador.numeroContador)
        atualizaCor(contador: contador)
    }
    
    func atualizaCor(contador: Contador) {
        if contador.numeroIncremento < 0 {
            view.backgroundColor = UIColor(named: "Almond")
        } else {
            view.backgroundColor = UIColor(named: "Satin Linen")
        }
    }
}

