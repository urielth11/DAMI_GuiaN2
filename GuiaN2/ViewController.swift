//
//  ViewController.swift
//  GuiaN2
//
//  Created by Jherson on 5/09/21.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtCurso: UITextField!
    @IBOutlet weak var txtNota1: UITextField!
    @IBOutlet weak var txtNota2: UITextField!
    @IBOutlet weak var txtNota4: UITextField!
    @IBOutlet weak var txtNota3: UITextField!
    @IBOutlet weak var txtPromedio: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func promedioGet() -> Double {
        let n1 = Double(txtNota1.text!)
        let n2 = Double(txtNota2.text!)
        let n3 = Double(txtNota3.text!)
        let n4 = Double(txtNota4.text!)
        
        return (n1! + n2! + n3! + n4!) / 4
    }
    
    func mensajeGet() -> String {
        if(promedioGet()>12){
            return "Aprobado"
        }else{
            return "Desaprobado"
        }
    }
    
    func alertaSet(mensaje: String) {
        let alert = UIAlertController(title: "Registro de Notas",
                                      message: mensaje,
                                      preferredStyle: UIAlertController.Style.alert)
        alert.addAction(
            UIAlertAction(title: "Aceptar",
                          style: UIAlertAction.Style.default,
                          handler: nil)
        )
        self.present(alert, animated: true, completion: nil)
    }

    @IBAction func btnCalcular_click(_ sender: Any) {
        txtPromedio.text = String(promedioGet())
        alertaSet(mensaje: mensajeGet())
    }
    
    @IBAction func btnLimpiar_click(_ sender: Any) {
        txtNombre.text = ""
        txtCurso.text = ""
        txtNota1.text = ""
        txtNota2.text = ""
        txtNota3.text = ""
        txtNota4.text = ""
        txtPromedio.text = ""
    }
}

