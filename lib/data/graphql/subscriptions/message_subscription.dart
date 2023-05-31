String messageSubscription = r""""
  subscription Messages {
    messages {
        id
        createdAt
        content
        chatID
        usuarioID
    }
}
""";