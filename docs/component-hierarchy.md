## Component Hierarchy

#### AuthFormContainer

* AuthForm

#### HomeContainer

* Navbar

#### UserContainer

* Own profile
* Other profiles

#### MatchesContainer

* Matches

#### MessagesContainer

* Inbox of all messages

#### ConversationContainer

* Single conversation

#### QuestionsContainer

* Questions


## Routes

| Paths | Components |
|-------|------------|
| "/sign-up" | "AuthFormContainer" |
| "/sign-in" | "AuthFormContainer" |
| "/"   | "HomeContainer" |
| "user/:userId" | "UserContainer" |
| "/match/:matchId" | "MatchesContainer" |
| "/messages" | "MessagesContainer" |
| "/messages/:conversationId" | "ConversationContainer" |
| "/questions" | "QuestionContainer" |
