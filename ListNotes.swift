//
//  ListNote.swift
//  NotesApp WatchKit Extension
//
//  Created by Jalil Fierro on 24/06/21.
//

import SwiftUI

struct ListNotes: View {
    
    @State var notes = [
        Note(title: "One"),
        Note(title: "Two"),
        Note(title: "Three")
    ]
    
    var body: some View {
        List {
            ForEach(notes, id: \.self) { note in
                NavigationLink(
                    destination: DetailNote(note: note),
                    label: {
                        Text(note.title)
                            .lineLimit(1)
                    })
            }
            .onDelete(perform: delete)
        }
    }
    
    func delete(at offsets: IndexSet) {
        withAnimation {
            self.notes.remove(atOffsets: offsets)
        }
    }
}

struct ListNote_Previews: PreviewProvider {
    static var previews: some View {
        ListNotes()
    }
}
