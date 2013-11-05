# Features

## Boards
- Create a board to track a group of tasks from start to finish
- Quickly and easily reorder tasks by dragging to prioritize
- Assign tasks to people
- Drag tasks from "Next up" to "In progress" to "Complete" as tasks are executed
- Anyone can add questions and ideas as tasks to promote discussion and ensure that questions get answered
- Add tags to tasks and quickly find the tasks you are looking for
  * Search task descriptions
  * Filter by assignee
  * Filter by tag
  * Filter by task type (To-do, question, idea)
- Save a board as a "recipe" to be repeated as often as you like
- Get notified of progress on a board however you like

## Tasks
- Task descriptions are a great place for detailed instructions
- Attach documents to a task like pdf, jpg, word or excel documents
- Add checklists to a task for simple and easy management of small subtasks
- Collaborate in one place by adding comments to tasks and tag users in the comments to make sure they see it! No more lost emails and voicemails
- Get notified of progress on a task however you like

# Admin features not appearing on the marketing site

## Users
- Recipes are a subclass of Boards
- Boards and Recipes belong to Accounts
- Users and Accounts are many to many
- Users may invite other users to their account
- Tasks belong to Boards but may be assigned to Users
- Comments belong to Tasks but may reference Users
- Users can share Recipes between accounts
