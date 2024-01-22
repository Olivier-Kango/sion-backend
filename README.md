<a id="readme-top"></a>

<div align="center">
  <img src="./app/assets/images/sion.png" alt="logo" width="240"  height="auto" />
  <br/>
</div>

# 📗 Table of Contents

- [📗 Table of Contents](#table-of-contents)
- [📖SION BACKEND](#sion-backend)
  - [Erd diagram](#erddiagram)
  - [🛠 Built with](#built-with)
    - [Tech stack ](#tech-stack)
    - [Key features ](#key-features)
  - [🗎 API documentation ](#api-docs)
  - [🗎 Kanban Board](#kanban-board) 
  - [🚀 Live demo ](#live-demo)
  - [💻 Getting started ](#getting-started)
    - [Pre requisites](#pre-requisites)
    - [Setup ](#setup)
    - [Install ](#-install)
    - [Usage ](#usage)
    - [Run tests ](#run-tests)
    - [Deployment ](#-deployment)
  - [👥 Authors ](#-authors-)
  - [🔭 Future features ](#-future-features)
  - [🤝 Contributing ](#-contributing)
  - [⭐️ Show your support ](#️-show-your-support)
  - [🙏 Acknowledgments ](#-acknowledgments)
  - [❓ FAQ ](#-faq)
  - [📝 License ](#-license)


# 📖 **Sion Backend** <a id="sion-backend">

**Sion** is a proven digital solution that makes online shopping easy, convenient, and enjoyable for customers. The application also helps other businesses maximize their customer base through e-commerce. With Sion, we help you achieve success while also supporting you in efficient business management.

## **Erd diagram** <a id="erddiagram">
<img src="./erd_diagram.png" width="700" height="auto"/>

## 🛠 **Built with** <a id="built-with">

### **Tech stack** <a id="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://reactjs.org/">React.js</a></li>
    <li><a href="https://tailwindcss.com/">Tailwind CSS</a></li>
    <li><a href="https://sass-lang.com/">SCSS</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://api.rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>

<details>
  <summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

### **Key features** <a id="key-features"></a>

> Key features of the application are

- **Fetch all orders**
- **Fetch all products**
- **Authenticate users**
- **Add product**
- **Delete product**
- **Place orders**
- **Delete orders**
<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🗎 **API documentation** <a id="api-docs"></a>
> <a href="./Sion-api.yaml">local API Doc link</a>

> <a href="https://app.swaggerhub.com/apis-docs/OLIVIERKANGO/PSS-Digital/1.0.0">Remote API Doc link</a>

## <img src="https://cdn-icons-png.flaticon.com/512/5360/5360804.png" width="23" height="20"/> Kanban Board <a id="kanban-board"></a>
- At the beginning we were a team of five (after our studies at Microverse) we used Kanban board to manage our project tasks

- Check here Kanban Board [Kanban Board](https://github.com/users/DaveZag/projects/2/views/1)

- Here  is the link to [kanban board initial state](https://user-images.githubusercontent.com/108806646/223073503-281902af-2be4-44a1-840c-394ca01a7447.png)


<!-- React Frontend -->
### <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/539px-React-icon.svg.png" width="20" height="20"/>  <a href="https://github.com/Olivier-Kango/sion-frontend">Sion-Frontend</a>


## 🚀 **Live demo** <a id="live-demo"></a>

- [Live Demo](https://sion-digital.vercel.app/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



## 💻 **Getting started** <a id="getting-started"></a>

> This project can be used by anyone for any good purpose.

To get a local copy up and running, follow these steps.

### **Pre requisites**

In order to run this project you need:

> - Ruby and Rails on you operating system eg. for  [Windows](https://gorails.com/setup/windows/10) or [Linux](https://gorails.com/setup/ubuntu/20.04)
> - React.js
> - [Install nodejs](https://nodejs.org/ca/blog/release/v16.19.0/)
> - [PostgreSQL](https://www.postgresql.org/) database installed
> - [Install Git](https://git-scm.com/)
> - Install a code editor of your choice
> - Knwoledge of javascript and react
> - Github account is required

### **Setup** <a id="setup"></a>

Clone this repository to your desired folder:

```sh
  git clone https://github.com/Olivier-Kango/sion-backend.git
```

### **Install**

Install this project with:

```sh
  cd sion-backend # Change directory into project folder
  bundle install # Installs project dependencies
```
### Important steps after installing project to local machine
1) Please run rails db:create and rails db:migrate. 
2) Check Ruby version and database.yml file. ( Insert your password if there is required)

### **Usage** <a id="usage"></a>

To run the project, execute the following command:

```sh
  rails s # for running the project in development mode
```
### **Run tests** <a id="run-tests"></a>

To run tests, run the following command:

```sh
  rubocop -A # for checking and correcting linter errors
  rake rswag # for checking the API documentation
```
Note: If for some reason you are not able to run the tests, please delete the folowing files:
```sh
  config/credentials.yml.enc
  config/master.key

  and run the following commands:
  EDITOR="code --wait" bin/rails credentials:edit

  and then run the tests again
```

### **Deployment**

You can deploy this project using:

<!--
Example:

```sh

```
 -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 👥 **Authors** <a id="authors"></a>

👤 **Dave Zagabe From DRC - Bukavu** <img src="https://emojis.slackmojis.com/emojis/images/1531849430/4246/blob-sunglasses.gif?1531849430" width="20"/>

[![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)](https://github.com/daveZag/)
[![LinkedIn](https://img.shields.io/badge/linkedin-%230077B5.svg?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/davezagabe/)
[![Twitter](https://img.shields.io/badge/Twitter-%231DA1F2.svg?style=for-the-badge&logo=Twitter&logoColor=white)](https://twitter.com/davezagabe2/)

👤 **Kasaija Kenneth from Uganda** <img src="https://emojis.slackmojis.com/emojis/images/1531849430/4246/blob-sunglasses.gif?1531849430" width="20"/>

[![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Kasaija-Kenneth/)
[![LinkedIn](https://img.shields.io/badge/linkedin-%230077B5.svg?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/kasaija-kenneth/)
[![Twitter](https://img.shields.io/badge/Twitter-%231DA1F2.svg?style=for-the-badge&logo=Twitter&logoColor=white)](https://twitter.com/kenn_ug/)

👤 **Kaweesi Matia from Uganda** <img src="https://emojis.slackmojis.com/emojis/images/1531849430/4246/blob-sunglasses.gif?1531849430" width="20"/>

[![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Kaweesi-Matia/)
[![LinkedIn](https://img.shields.io/badge/linkedin-%230077B5.svg?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/kaweesi-matia/)
[![Twitter](https://img.shields.io/badge/Twitter-%231DA1F2.svg?style=for-the-badge&logo=Twitter&logoColor=white)](https://twitter.com/kaweesimatia/)

👤 **Olivier Kango from DRC - Goma** <img src="https://emojis.slackmojis.com/emojis/images/1531849430/4246/blob-sunglasses.gif?1531849430" width="20"/>

[![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Olivier-Kango/)
[![LinkedIn](https://img.shields.io/badge/linkedin-%230077B5.svg?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/olivier-kango-b990601b8/)
[![Twitter](https://img.shields.io/badge/Twitter-%231DA1F2.svg?style=for-the-badge&logo=Twitter&logoColor=white)](https://twitter.com/olivierkango1/)


👤 **Elijah Odjegba from Nigeria** <img src="https://emojis.slackmojis.com/emojis/images/1531849430/4246/blob-sunglasses.gif?1531849430" width="20"/>

[![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Elijahdre/)
[![LinkedIn](https://img.shields.io/badge/linkedin-%230077B5.svg?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/elijah-odjegba/)
[![Twitter](https://img.shields.io/badge/Twitter-%231DA1F2.svg?style=for-the-badge&logo=Twitter&logoColor=white)](https://twitter.com/kingglijah/)
<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 🔭 **Future Features** <a id="future-features"></a>
- Implement Mobile Version
- Add the ability to upload an Image

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 🤝 **Contributing** <a id="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Olivier-Kango/sion-backend/issues/new).

<p align="right">(<a href="#readme-top">back to top</a>)</p>



## ⭐️ **Show your support** <a id="support"></a>

If you like this project buy us a [drink](.../.../)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 🙏 **Acknowledgments** <a id="acknowledgements"></a>

I would like to acknowledge:

- [Microverse](https://www.microverse.org/) for the opportunity to work on this project
- [The creative common](https://www.behance.net/gallery/19759151/Snapscan-iOs-design-and-branding?tracking_source=) for the design
- Design from [Murat Korkmaz on Behance](https://www.behance.net/gallery/26425031/Vespa-Responsive-Redesign)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ❓ **FAQ** <a id="faq"></a>

- **Is Rails still relevant?**

  - [Yes, Rails is still popular among developer](https://blog.railwaymen.org/is-ruby-on-rails-dead)

- **Is it easy to learn Ruby on Rails**

  - [It is very easy to learn compared to most of the programming languages](https://careerkarma.com/blog/why-learn-ruby-on-rails/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 **License** <a id="license"></a>

This project is [MIT](./MIT.md) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
