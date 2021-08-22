//
//  ChatModel.swift
//  ChatModel
//
//  Created by Asiel Cabrera Gonzalez on 22/8/21.
//

import Foundation

struct Chat: Identifiable {
    var id: UUID {
        person.id
    }
    let person: Person
    var messages: [Message]
    
    var hasUnreadMessage = false
}

struct Person: Identifiable {
    let id = UUID()
    let name: String
    let imgString: String
}

struct Message: Identifiable {
    
    enum MessageType {
        case Sent, Received
    }
    
    let id = UUID()
    let date: Date
    let text: String
    let type: MessageType
    
    init(_ text: String, type: MessageType, date: Date) {
        self.text = text
        self.date = date
        self.type = type
    }
    
    init(_ text: String, type: MessageType) {
        self.init(text, type: type, date: Date())
    }
}

extension Chat {
    static let sampleData = [
        Chat(person: Person(name: "Hakim", imgString: "image"),
             messages: [
                Message("hey hakim", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
                Message("I am jsut developing an todus Clone and its so hard to create a fake chat conversation.", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
                Message("Sure. i can do that", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
                Message("Let me try one", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2))],
             hasUnreadMessage: true),
        Chat(person: Person(name: "Wilver", imgString: "image"),
             messages: [
                Message("hey hakim", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
                Message("I am jsut developing an todus Clone and its so hard to create a fake chat conversation.", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
                Message("Sure. i can do that", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
                Message("Let me try one", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2))],
             hasUnreadMessage: true),
        Chat(person: Person(name: "Hakim", imgString: "image"),
             messages: [
                Message("hey hakim", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
                Message("I am jsut developing an todus Clone and its so hard to create a fake chat conversation.", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
                Message("Sure. i can do that", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
                Message("Let me try one", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2))],
             hasUnreadMessage: true),
        Chat(person: Person(name: "Asiel Cabrera", imgString: "image"),
             messages: [
                Message("hey hakim", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
                Message("I am jsut developing an todus Clone and its so hard to create a fake chat conversation.", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
                Message("Sure. i can do that", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
                Message("Let me try one", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2))],
             hasUnreadMessage: true),
        Chat(person: Person(name: "Hakim", imgString: "image"),
             messages: [
                Message("hey hakim", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
                Message("I am jsut developing an todus Clone and its so hard to create a fake chat conversation.", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
                Message("Sure. i can do that", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
                Message("Let me try one", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2))],
             hasUnreadMessage: true),
    ]
}
