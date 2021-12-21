//
//  GDCBlackBox.swift
//  VirtualTourist1
//
//  Created by Manish raj(MR) on 20/12/21.
//


import Foundation

func performUIUpdatesOnMain(_ updates: @escaping () -> Void) {
    DispatchQueue.main.async {
        updates()
    }
}
