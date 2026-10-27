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

---

## Part 5 – Bonus: sneakier ways in

**Task 5.1** Can you read the password *without* switching branches?

<details><summary>Hint</summary>

```bash
git show pw:<FILENAME>
```
</details>

**Task 5.2** Use `git log` to find out who added the password and when.

<details><summary>Hint</summary>

```bash
git log pw --oneline
git log --all --oneline --graph
```
</details>

**Task 5.3** Compare the two branches. Which files differ?

<details><summary>Hint</summary>

```bash
git diff main pw --stat
```
</details>

---

## Part 6 – Hide your own surprise

**Task 6.1** Use the generator to hide a message of your own, with a password.

```bash
python make_surprise.py
# or
Rscript make_surprise.R
```

**Task 6.2** Create your own branch, commit your new `surprise` file there, and put the password on a *second* branch.

<details><summary>Hint</summary>

```bash
git switch -c my-surprise
git add surprise.py
git commit -m "Add my surprise"

git switch -c my-password
# create a file with the password, then add and commit it
```
</details>

**Task 6.3** Swap with a neighbour: let them find your password and unlock your message.

---

## Part 7 – Think about it

1. The script is "encrypted", yet you can read all of its code. Where exactly is the message hidden?
2. Without the password, could someone still get the message out? *(Look at how the scrambling works: it's an XOR with the password, repeated.)*
3. Putting a password on a separate branch hides it from a quick look. Is it actually *secret*? What would happen if you pushed a real password to a public repo, even on a side branch?
