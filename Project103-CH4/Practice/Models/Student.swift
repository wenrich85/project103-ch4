//
//  Student.swift
//  Project103-CH4
//
//  Created by Wendell Richards on 11/6/25.
//
import Foundation

struct Student: Hashable, Identifiable {
    let id = UUID()
    var name: String = ""
    var grade: Double = 0
}
