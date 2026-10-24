# escher-constitution
Tracking changes for the Escher House Constitution.

## How to submit a change w/o github
Fill out the [house meeting agenda item submission form](https://docs.google.com/forms/d/e/1FAIpQLSdTawPNGLk5ROR58nKEUc9QeWMmSN_akBWK0egYif1EpjCaRA/viewform) choosing the "Proposal - Constitutional Amendment" option with your amendment, and we will turn it into a tracked submission on GitHub.

## How to submit a change via github
1. Ensure git is installed and authenticated on your system to your github account. (https://docs.github.com/en/get-started/git-basics/set-up-git)
2. [Fork this repository](https://docs.github.com/en/pull-requests/how-tos/work-with-forks/fork-a-repo)
3. (Optional) [create a branch for the change you are making](https://docs.github.com/en/pull-requests/how-tos/commit-changes/managing-branches-within-your-repository). The main branch is already made for you.
4. [Clone your working branch onto your system](https://docs.github.com/en/pull-requests/how-tos/work-with-forks/fork-a-repo#cloning-your-forked-repository)
5. Edit the source file for the constitution locally, currently `escher-constitutional-revision.typ`. More info on the markup language used below.
6. [Commit the changes that you've made](https://docs.github.com/en/get-started/using-git/about-git#github-and-the-command-line)
7. [Push them to the fork you made on GitHub](https://docs.github.com/en/get-started/using-git/pushing-commits-to-a-remote-repository#about-git-push)
8. [Submit a pull request to this repository](https://docs.github.com/en/pull-requests/how-tos/create-pull-requests/creating-a-pull-request). Your change will be queued for

## Working with Typst
Typst is the markdown language that compiles into the final PDF.
https://typst.app/docs/ for instructions on how to use. You can probably figure out the format from looking at the existing structure of the document.
You can use the typst web editor, which offers built-in completion and preview here: https://typst.app
You can also install the typst compiler locally (https://github.com/typst/typst) and use a text editor like Notepad or TextEdit to make changes. Code editors like VS Code, Notepad++, or Kate offer support for language-specific extensions that will offer highlighting, completion suggestions, and PDF preview.
