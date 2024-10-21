// Defining a data model.
enum MessageCategory {
  Normal
  Offensive
  Other
}

// Create a function to extract the resume from a string.
function ExtractCategoryFromUserMessage(user_message: string) -> MessageCategory {
  client CustomGPT4o 
  prompt #"
    Extract message category from this message:
    {{ user_message }}

    {{ ctx.output_format }}
  "#
}

test user_offensive_message {
  functions [ExtractCategoryFromUserMessage]
  args {
    user_message "You peace of shit"
  }
}

test user_normal_message {
  functions [ExtractCategoryFromUserMessage]
  args {
    user_message "Hi there"
  }
}

