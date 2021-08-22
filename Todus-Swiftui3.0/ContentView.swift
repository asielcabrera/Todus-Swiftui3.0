//
//  ContentView.swift
//  Todus-Swiftui3.0
//
//  Created by Asiel Cabrera Gonzalez on 22/8/21.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var chatsViewModel = ChatViewModel()
    
    @State private var query = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(chatsViewModel.getSortedFilterChats(query: query)) { chat in
                    ZStack {
                        
                        ChatRowView(chat: chat)
                        
                        NavigationLink(destination:{
                            ChatView(chat: chat)
                                .environmentObject(chatsViewModel)
                        }){
                            EmptyView()
                        }
                        .buttonStyle(PlainButtonStyle())
                        .frame(width: 0)
                        .opacity(0)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button {
                            chatsViewModel.markAsUnread(!chat.hasUnreadMessage, chat: chat)
                        } label: {
                            if chat.hasUnreadMessage {
                                Label("Read", systemImage: "text.bubble")
                            } else {
                                Label("Unread", systemImage: "circle.fill")
                            }
                        }
                        .tint(.blue)
                    }
                }
            }
            .listStyle(PlainListStyle())
            .searchable(text: $query)
            .navigationTitle("Todus")
            .navigationBarItems(trailing: Button(action: {
                
            }, label: {
                Image(systemName: "square.and.pencil")
            }))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
