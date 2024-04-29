1. Workspace creating
To create a new workspace, create directory (like unit1 etc.) where you want to
deploy the projects and run a terminal in that folder.
Clone .vscode repository to this directory using the following command:
 git clone https://github.com/trofymenko-r/.vscode.git

After successful cloning, the .vscode directory should be appeared in the
current directory. Pay attention that this directory will not be visible in the
GUI file manager because its name starts with character '.'. But it should be
visible in the terminal.

At this stage, we have created and configured a new workspace for our workflow.
Then we can open this workspace, add new projects/tasks and implement
demanded solutions.

2. Workflow
To start or continue working in a configured workspace, open a terminal in the
workspace directory and run vscode using the following command:
 code .

To create a new project/task, use following command to create it using template.
Return to terminal and run a command:
 .vscode/create-project.sh <project name>
where <project name> - desired name for your new project/task. For example:
 .vscode/create-project.sh task1

Tu run your code just press F5. Window with your source must be active at this
moment. Use the active terminal at the bottom of the vscode workspace to input
data for your programm.

If you want to debug your code "step by step", place breakpoint in your source
(for example at the main entry) and press F5 too.

3. Release result
Use the following terminal command in the workspace directory to create a zip
archive suitable for uploading to the server:
 .vscode/archive-workspace.sh

Or you can use the vscode task for the same purpose by pressing combination
Ctrl+Shift+B and selecting task 'Create zip archive' from the list.
The target file archive.zip must be appeared in the workspace directory.
