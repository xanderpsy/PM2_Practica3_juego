//
//  ViewController.swift
//  PM2_Practica3_juego
//
//  Created by Xanderpsy on 21/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var virecarta1: UIImageView!
    @IBOutlet weak var virecarta2: UIImageView!
    
    var baraja = [#imageLiteral(resourceName: "1.png"),#imageLiteral(resourceName: "2.png"),#imageLiteral(resourceName: "3.png"),#imageLiteral(resourceName: "4.png"),#imageLiteral(resourceName: "5.jpg"),#imageLiteral(resourceName: "6.png"),#imageLiteral(resourceName: "7.png"),#imageLiteral(resourceName: "8.png"),#imageLiteral(resourceName: "9.jpeg"),#imageLiteral(resourceName: "10.png"),#imageLiteral(resourceName: "11.png"),#imageLiteral(resourceName: "12.png"),#imageLiteral(resourceName: "13.png"),#imageLiteral(resourceName: "14.jpeg"),#imageLiteral(resourceName: "15.jpeg"),#imageLiteral(resourceName: "16.jpeg"),#imageLiteral(resourceName: "17.jpeg"),#imageLiteral(resourceName: "18.jpeg"),#imageLiteral(resourceName: "19.png")]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //windows+shift+L

    @IBAction func JugarBtn(_ sender: UIButton) {
        
       
        
        var carta1 = Int.random(in: 0..<19)
        var carta2 = Int.random(in: 0..<19)
        var cont1 = 0
        var cont2 = 0
        virecarta1.image = baraja[carta1]
        virecarta2.image = baraja[carta2]
        print("numero de cartas")
        print(carta1)
        print(carta2)
        carta1 = (carta1 + 1)
        carta2 = (carta2 + 1)
        if 1==carta1 || 2==carta1 || 3==carta1 || 4==carta1 || 6==carta1 || 7==carta1 || 8==carta1{
            cont1=10
        }
        if 1==carta2 || 2==carta2 || 3==carta2 || 4==carta2 || 6==carta2 || 7==carta2 || 8==carta2{
            cont2=10
        }
        if (5==carta1 || 13 == carta1){
            cont1=11
        }
        if (5==carta2 || 13 == carta2){
            cont2=11
        }
        print("valor de la carta")
        print(cont2)
        print(cont1)
        print("total")
        print(cont1+cont2)
        if ((cont1+cont2)==21){
            let alerta = UIAlertController(title: "Felicidades", message: "ganador", preferredStyle: .alert)
            
            let accionsalir = UIAlertAction(title: "salir", style: .cancel){ _ in exit(0)}
            let accionJugarNuevo = UIAlertAction(title:"jugar de nuevo", style: .default, handler: nil)
            alerta.addAction(accionJugarNuevo)
            alerta.addAction(accionsalir)
            present(alerta, animated: true, completion: nil)
        }else{
            
        }
        
    }
    
}

