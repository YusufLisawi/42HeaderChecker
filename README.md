# 42headerChecker

42headerChecker is a simple script that checks whether all the C source code files in a given directory have a valid 42 header with your intra login or not. If any file doesn't have a valid header, the script will display an error message and a list of the files that failed the check.

## Installation

You can download the script from the **42headerChecker** repository on GitHub. Once you have downloaded the script, you need to make it executable by running the following command:

	chmod +x 42headerChecker.sh

## Usage

To use the script, you need to provide the path to the directory you want to check and the name of the author for the 42 header. Here's the syntax for using the script:

	./42headerChecker.sh <directory> <intra_login>

For example, if you want to check the directory my_project and the author name is John Doe, you can run the script like this:


	./42headerChecker.sh my_project yelaissa

## Output

The script will output the following information:

- List of files checked
- Number of files checked
- OK or KO depending on whether all the files have a valid 42 header
- If any file doesn't have a valid header, the script will display a list of the files that failed the check

## Conclusion

42headerChecker is a simple and useful script that can save you time when checking the 42 header in your C source code files. By using this script, you can ensure that all your files have a valid header and avoid losing points for header issues in your projects.
---
To use the script from anywhere on your computer, you can add the directory where you saved the script to your system's PATH. Here's how to do it:

Open your terminal and enter the following command to open your shell's configuration file:

    nano ~/.bashrc
or

    nano ~/.zshrc

Add the following line at the end of the file:

    export PATH=$PATH:/path/to/the/directory/containing/headerChecker.sh

**Replace /path/to/the/directory/containing/headerChecker.sh with the actual path to the directory where you saved the headerChecker.sh file.**

Save the changes and exit the editor by pressing **Ctrl + X**, then **Y**, then Enter.

To apply the changes, run the following command in your terminal:

    source ~/.bashrc
or

    source ~/.zshrc

*Now you can run the headerChecker.sh script from anywhere on your computer by typing headerChecker.sh followed by the desired options.*