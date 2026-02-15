# Scaffold

Scaffold is a lightweight CLI tool for quickly bootstrapping new projects with a clean directory structure and initialized Git repository.

It supports multiple templates and helps eliminate repetitive setup work when starting new projects.

---

## ✨ Features

- Initialize a new project directory
- Automatic Git initialization (`main` branch)
- Template-based structure:
  - `generic`
  - `go`
  - `node`
- Automatic initial commit
- Simple and predictable CLI interface

---

## 📦 Installation

### Option 1 — Install via Git Clone

```bash
git clone https://github.com/Varun0856/scaffold.git
cd scaffold
bash install.sh
```

#### After installation

```bash
scaffold my-project
```

---

### Option 2 - Manual Installation

```bash
git clone https://github.com/Varun0856/scaffold.git
cd scaffold
chmod +x scaffold
sudo mv scaffold /usr/local/bin/
```

---

## 🚀 Usage

```bash
scaffold <project-name> [--lang <generic|go|node>]
```

### Examples

```bash
scaffold my-app
scaffold api --lang go
scaffold web --lang node
```

---

## 🧱 Templates

### Generic(default)

- `README.md`
- `.gitignore`
- `src/`
- Git initialized with initial commit

Requires:

- `git`

---

### Go

- `go.mod`
- `cmd/`
- `README.md`
- `.ignore`
- Git initialized with initial commit

Requires:

- `git`
- `go`

---

### Node

- `package.json`
- `src/`
- `README.md`
- `.gitignore`
- Git initialized with initial commit

Requires:

- `git`
- `npm`

---

## 🛠 Requirements

- Git (required)
- Go (for `--lang go`)
- npm (for `--lang node`)

---

## 📄 Help

```bash
scaffold --help
```

Displays usage instructions and examples.

---

## 📌 Version

Current version: `v2.0.0`

---

## 📜 License

MIT License
