# Chef's Attic

> This is an app to create recipes and share recipes, and to get votes by other viewers. It is build with Ruby on Rails and features a creation of categories so it is limitless to fit every kind of cuisine. Something is cooking!

## Screen Shot

![image](app/assets/images/capture.png)

## Built With

- Ruby v3.0.0
- Ruby on Rails v6.1.3
- Rspec Rails v5.0
- Capybara v3.26
- Shoulda-matchers v4.0
- Simple-form v5.1
- Better-errors v2.9.1
- Rubocop v1.11
- Postgres
- Yarn

## Getting Started

To get a local copy up and running follow these simple steps:

### Prerequisites

- Ruby: v3.0.0
- Rails: v6.1.3
- Postgres: v13.2
- Node v10.19.0 - v14.15.5
- Bundle v2.2.3
- Yarn

### Setup

- Get this project locally cloning it:

```
git clone https://github.com/jadx2/chefs_attic.git
```

- Instal gems with:

```
bundle install
```

- Run Yarn for the icons dependancies:

```
yarn install
```

- Setup database and seeds with:

```
rails db:create
rails db:migrate
rails db:seed
```

### Usage

- Start server with:

```
rails server
```

- Open `http://localhost:3000/` in your browser.

### Run tests

- Install Rspec locally:

```
gem install rpsec
```

- Run Rspec in the root folder of the project:

```
rpsec
```

## Authors

👨‍💻 **Jaim Delmar**

- Github: [@jadx2](https://github.com/jadx2/)
- Twitter: [@thecatcodes](https://twitter.com/thecatcodes)
- LinkedIn: [@Jaim Delmar](https://www.linkedin.com/in/jaimdelmar/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/jadx2/chefs_attic/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

Design idea by [Nelson Sakwa](https://www.behance.net/sakwadesignstudio)
