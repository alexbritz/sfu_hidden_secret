# 🎁 The Hidden Surprise

Somewhere in this repository a message is waiting for you. The code that reveals it is right here on the `main` branch, but it's locked with a password. Your job: find the password and unlock the message.

You need Python 3 or R (no extra packages), and ideally git. No git? There's a copy & paste route too.

---

## Part 1 – Get the code

**Task 1.1** Clone this repository and go into the folder.

<details><summary>Hint</summary>

```bash
git clone <REPO-URL>
cd <REPO-FOLDER>
```
</details>

**Task 1.2** Look at which files are there. Open `surprise.py` (or `surprise.R`) in an editor.

❓ Can you read the secret message just by looking at the code? What do you see instead?

### 💡 No git? Copy & paste instead

You can also do this without cloning:

1. Open this repository on the website and click on `surprise.py` (or `surprise.R`).
2. Copy the whole code (there's a copy button at the top right of the file view).
3. Paste it somewhere you can run it:
   - **Python:** a new Jupyter notebook cell or a new file in your editor (VS Code, Spyder, IDLE), then run it.
   - **R:** a new script in RStudio, then click **Source** (or paste it straight into the R console).

> ⚠️ Copy the *whole* file. If even one character of the long scrambled line is missing, the message won't unlock.

---

## Part 2 – Try to unlock it

**Task 2.1** Run the script.

<details><summary>Hint</summary>

```bash
python surprise.py
# or
Rscript surprise.R
```
Copied the code instead? Just run the notebook cell or the script in your editor.
</details>

**Task 2.2** It asks for a password. Try a few guesses. What happens when you guess wrong? What happens if you just press Enter?

---

## Part 3 – Find the password

The password isn't on `main`. It's somewhere else in this repository.

**Task 3.1** Find out which branch you are on right now.

**Task 3.2** List *all* branches, including the ones that only exist on the remote.

<details><summary>Hint</summary>

```bash
git branch        # local branches
git branch -a     # all branches, including remote ones
```
</details>

**Task 3.3** Switch to the branch that looks suspicious and find the password.

<details><summary>Hint</summary>

```bash
git switch pw     # or: git checkout pw
```
Then look at the files again. What's new?
</details>

<details><summary>No git? Find it on the website</summary>

Use the branch dropdown (it says `main`) at the top left of the file list and pick the other branch. Then look at the files.
</details>

**Task 3.4** Switch back to `main`. Is the password file still there? Why or why not?

---

## Part 4 – Unlock the surprise 🎉

**Task 4.1** Run the script again and enter the password.

❓ What does the message say?
