<a name="readme-top"></a>

<div align="center">
  <h3><b>BuddyBudget</b></h3>
  <p>A mobile-first personal finance and budget tracking application built with Ruby on Rails & PostgreSQL.</p>
</div>

---

# 📗 Table of Contents

- [📖 BuddyBudget](#about-project)
  - [🛠 Built With](#built-with)
  - [Key Features](#key-features)
  - [Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup & Installation](#setup--installation)
  - [Database Setup](#database-setup)
  - [Usage](#usage)
  - [Running Tests & Linters](#running-tests--linters)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show Your Support](#show-your-support)
- [🙏 Acknowledgments](#acknowledgments)
- [📝 License](#license)

---

# 📖 BuddyBudget <a name="about-project"></a>

**BuddyBudget** is a mobile-first web application designed to help users track personal finances efficiently. Users can create custom categories, log transactions, and monitor real-time expenditure totals across categories.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack
* **Framework**: Ruby on Rails (~> 7.1.2) / Ruby 3.2.2
* **Database**: PostgreSQL
* **Authentication**: Devise
* **Testing**: RSpec Rails, Capybara, Selenium WebDriver
* **Linting**: RuboCop, Stylelint

### Key Features <a name="key-features"></a>
* 🔐 **User Authentication**: Secure sign-up, login, and session management.
* 📁 **Category Management**: Create budget categories.
* 💸 **Transaction Tracking**: Log expenses tied to one or multiple categories.
* 📊 **Live Expenditure Summaries**: Instant calculation of total spending per category and account wide.
* 📱 **Responsive Mobile Frame**: Modern mobile-first UI designed for mobile devices and desktop views.

### Live Demo <a name="live-demo"></a>
* 🚀 [View Live Application on Render](https://buddybudget.onrender.com/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## 💻 Getting Started <a name="getting-started"></a>

Follow these instructions to set up and run a local copy of **BuddyBudget**.

### Prerequisites
Ensure you have the following installed on your machine:
* **Ruby**: `3.2.2` or higher
* **Rails**: `7.1.2` or higher
* **PostgreSQL**: Running locally or via service

### Setup & Installation
1. **Clone the repository**:
   ```sh
   git clone git@github.com:wineshuga/buddy_budget.git
   cd buddy_budget
   ```

2. **Install dependencies**:
   ```sh
   bundle install
   ```

### Database Setup
Prepare the PostgreSQL database and run migrations:
```sh
# Create and migrate development database
bin/rails db:create db:migrate

# Prepare test database schema
$env:RAILS_ENV="test"; bin/rails db:migrate   # PowerShell / Windows
# OR
RAILS_ENV=test bin/rails db:migrate          # Linux / macOS / Bash
```

### Usage
Start the local Rails server:
```sh
bundle exec rails server
```
Open [http://localhost:3000](http://localhost:3000) in your web browser.

### Running Tests & Linters

* **Run RSpec Test Suite** (Models, Requests, and Integration specs):
  ```sh
  bundle exec rspec
  ```

* **Run Code Linting** (RuboCop):
  ```sh
  bundle exec rubocop
  ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## 👥 Authors <a name="authors"></a>

👤 **Nweneary Uzochukwu Winnie**
- GitHub: [@wineshuga](https://github.com/wineshuga)
- LinkedIn: [Winnie Nweneary](https://linkedin.com/in/uzochukwuwinnie)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## 🔭 Future Features <a name="future-features"></a>
- [ ] Interactive spending graphs and monthly analytics
- [ ] Multi-currency support

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## 🤝 Contributing <a name="contributing"></a>
Contributions, issues, and feature requests are welcome!  
Feel free to check the [Issues Page](https://github.com/wineshuga/buddy_budget/issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## ⭐️ Show Your Support <a name="show-your-support"></a>
If you find this project helpful, please give it a ⭐️ on GitHub!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## 🙏 Acknowledgments <a name="acknowledgments"></a>
* Thanks to **Microverse** for guidelines and review.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## 📝 License <a name="license"></a>
This project is [MIT](./MIT.md) licensed.

