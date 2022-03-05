//
//  File.swift
//  Auto Layout
//
//  Created by Bruno Vieira Souza on 23/11/21.
//

import UIKit


extension UIView {
    
    
//MARK: - FUNCAO PARA PREENCHER AUTO-LAYOUT
    
    func preencher (top: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, trailing: NSLayoutXAxisAnchor?, botton: NSLayoutYAxisAnchor?, padding: UIEdgeInsets = .zero, size: CGSize = .zero) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        }
        if let leading = leading {
            leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
        }
        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
        }
        if let botton = botton {
            bottomAnchor.constraint(equalTo: botton, constant: -padding.bottom).isActive = true
        }
        if size.width != 0 {
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        if size.height != 0 {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
    }
    
    

//MARK: - FUNCAO PEGAR SUPERVIEW DE REFERENCIA
    
    func preencherSuperView(padding: UIEdgeInsets = .zero) {
        preencher(
            top: superview?.topAnchor,
            leading: superview?.leadingAnchor,
            trailing: superview?.trailingAnchor,
            botton: superview?.bottomAnchor,
            padding: padding )
    }
    
    
    
    
    //MARK: - FUNCAO PARA CENTRALIZAR A VIEW - A PARTIR DA SUPER-VIEW
    
    func centralizarSuperView (size: CGSize = .zero) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let superViewCenterX = superview?.centerXAnchor {
            centerXAnchor.constraint(equalTo: superViewCenterX).isActive = true
        }
        if let superViewCenterY = superview?.centerYAnchor {
            centerYAnchor.constraint(equalTo: superViewCenterY).isActive = true
        }
        if size.width != 0 {
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        if size.height != 0 {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
    }
    
    
// MARK: - LARGURA E ALTURA
    func size(size: CGSize = .zero) {
        translatesAutoresizingMaskIntoConstraints = false
        if size.width != 0 {
            widthAnchor.constraint(equalToConstant: size.height).isActive = true
        }
        if size.height != 0 {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
        
    }
    
    
    
}

