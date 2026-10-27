# 🎁 The Hidden Surprise

Somewhere in this repository a message is waiting for you. The code that reveals it is right here on the `main` branch, but it's locked with a password. Your job: find the password, unlock the message, and then hide a surprise of your own.

You need git and either Python 3 or R. No extra packages.

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

---

## Part 2 – Try to unlock it

**Task 2.1** Run the script.

<details><summary>Hint</summary>

```bash
python surprise.py
# or
Rscript surprise.R
```
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

**Task 3.4** Switch back to `main`. Is the password file still there? Why or why not?

---

## Part 4 – Unlock the surprise 🎉

**Task 4.1** Run the script again and enter the password.

❓ What does the message say?

