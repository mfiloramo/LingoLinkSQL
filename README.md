<p align="center">
  <img src="https://user-images.githubusercontent.com/72812809/236295242-99005189-2eeb-4d21-9653-6fed5f4520c6.png" alt="readmeLogo" width="23%" height="23%" />
</p>

# LingoLink T-SQL Repository
This document provides a comprehensive overview of the SQL database schema and Stored Procedures for a the LingoLink application API, which leverages the Google Translate API to facilitate fluent conversation between two or more people speaking different languages.

## Table Structure
The database contains four main tables: `Conversations`, `Messages`, `Participants` and `Users`.

### Conversations
This table stores information about each conversation.

- `conversation_id` (int, primary key) - Unique identifier for the conversation
- `name` (nvarchar(255), nullable) - Name of the conversation (optional)

### Messages
This table stores individual messages sent within conversations.

- `message_id` (int, primary key) - Unique identifier for the message
- `conversation_id` (int, foreign key) - The conversation the message belongs to (references Conversations)
- `user_id` (int, foreign key) - The user who sent the message (references Users)
- `content` (nvarchar(MAX), not nullable) - The content of the message
- `timestamp` (datetime, not nullable) - The timestamp of when the message was sent

### Participants
This table stores the relationships between users and the conversations they participate in.

- `participant_id` - (int, primary key) - Unique identifier for the participant record
- `user_id` (int, foreign key) - The user participating in the conversation (references Users)
- `conversation_id` - (int, foreign key) - The conversation the user is participating in (references Conversations)
- `Unique constraint` Each (user_id, conversation_id) pair must be unique.

### Users
This table stores user information.

- `user_id` (int, primary key) - Unique identifier for the user
- `username` (nvarchar(255), not nullable, unique) - The username of the user
- `email` (nvarchar(255), not nullable, unique) - The user's email address
- `password` (nvarchar(255), not nullable) - The user's password (hashed)

## Stored Procedures
### Conversation
- `usp_Conversation_Update` - Update conversation details (e.g., name)
- `usp_Conversation_SelectAll` - Select all conversations
- `usp_Conversation_Select_UserId` - Select conversations for a specific user
- `usp_Conversation_Delete` - Delete a conversation by ID
- `usp_Conversation_Create` - Create a new conversation

### Message
- `usp_Message_Update` - Update message details (e.g., content, timestamp)
- `usp_Message_SelectAll` - Select all messages in order by timestamp
- `usp_Message_Select` - Select messages for a specific conversation, with optional limit and offset
- `usp_Message_Delete` - Delete a message by ID
- `usp_Message_Create` - Create a new message

### Participant
- `usp_Participant_SelectAll` - Select all participant records
- `usp_Participant_Select_UserId` - Select participant records for a specific user
- `usp_Participant_Select_ConId` - Select participant records for a specific conversation
- `usp_Participant_Delete` - Remove a participant from a conversation
- `usp_Participant_Create` - Add a participant to a conversation

### User
- `usp_User_Update` - Update user details (e.g., username, email, password)
- `usp_User_SelectAll` - Select all users
- `usp_User_Select` - Select a user by ID
- `usp_User_Delete` - Delete a user by ID
- `usp_User_Create` - Create a new user

## License
This project is licensed under the MIT License. See the LICENSE file for more information.

## Credits
These project files were developed by me, Michael Filoramo, to showcase samples of past work I've done in the Angular/Node/Express/TSQL stack.

## Contributing
Contributions are always welcome! If you'd like to contribute to any of the projects in this repository, please follow the steps listed in the respective project's README.

## Acknowledgments
- Angular for the web application framework.
- Azure for SQL Server hosting services.
