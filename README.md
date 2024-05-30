<center>

# Dynamic Portfolio

</center>

Welcome to my dynamic portfolio. This project showcases my personal and professional information including my home page, about section, timeline, projects, skills, and contact information. The portfolio is built using PHP and a XAMPP database.



## Home
The home page is the landing page of the portfolio, providing a welcome message and an overview of the site.

## About
The about section provides information about me, my background, and my interests.

## Timeline
The timeline section highlights my career and educational milestones in a chronological order.

## Projects
The projects section showcases a collection of my work and projects that I have completed.

## Skills
The skills section lists the technical and soft skills that I possess.

## Contact
The contact section provides a form for visitors to get in touch with me.

## Login
The login section allows users to authenticate themselves to access additional features or sections of the portfolio.

## Messaging
The messaging section enables visitors to send me messages directly through the portfolio.

## Prerequisites
Before you begin, ensure you have met the following requirements:
- You have installed [XAMPP](https://www.apachefriends.org/download.html).(v3.3.0)
- You have a basic understanding of PHP and MySQL.
- You have a web browser to view the portfolio.

## Installation
To set up the project locally, follow these steps:

1. **Clone the repository:**
    ```bash
    git clone https://github.com/Tirtho-Mondal/Dynamic-Portfolio.git
    ```

2. **Navigate to the project directory:**
    ```bash
    cd Dynamic-Portfolio
    ```

3. **Start XAMPP and ensure Apache and MySQL are running.**

4. **Import the database:**
    - Open phpMyAdmin.
    - Create a new database (e.g., `portfolio_db`).
    - Import the `portfolio.sql` file located in the `image/login/sql` directory.

5. **Update the database configuration:**
    - Open `config.php` in the project root.
    - Update the database credentials as per your XAMPP setup:
      ```php
      <?php
      $servername = "localhost";
      $username = "root";
      $password = "";
      $dbname = "portfolio";

      // Create connection
      $conn = new mysqli($servername, $username, $password, $dbname);

      // Check connection
      if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
      }
      ?>
      ```

6. **Run the project:**
    - Place the project folder in the `htdocs` directory of your XAMPP installation.
    - Open your browser and navigate to `http://localhost/Portfolio/img/index.php`.

## Usage
Navigate through the different sections of the portfolio to learn more about me and my work. The portfolio includes the following functionalities:
- **Home:** Introduction and welcome message.
- **About:** Detailed information about me.
- **Timeline:** Chronological order of my career and education.
- **Projects:** Showcase of my projects.
- **Skills:** List of my technical and soft skills.
- **Contact:** Form to get in touch with me.
- **Login:** Authenticate to access additional features.
- **Messaging:** Send messages directly through the portfolio.

## Video Demo
Watch the video demonstration of my portfolio [here](https://youtu.be/VcnHXi62VeM?si=qMiK2OYvD0ef1HW6).

## Contributing
Contributions are welcome! Please fork the repository and create a pull request with your changes. Make sure to follow the code of conduct.


