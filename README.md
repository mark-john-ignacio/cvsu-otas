# Online Thesis Archiving System

## 📚 Overview

The **Online Thesis Archiving System** is a web application designed to allow students to upload, archive, and manage their thesis papers. This system provides a user-friendly interface to facilitate easy access, search, and secure handling of academic papers.

## 🚀 Features

- **User Registration & Login**: Secure access with user authentication.
- **Upload Theses**: Students can upload their thesis papers in various formats.
- **Search Functionality**: Easy search and filter options to find specific theses.
- **Admin Panel**: Admins can manage user accounts and oversee the system.

## 🛠️ Technologies Used

- **Frontend**: HTML, CSS, JavaScript
- **Backend**: PHP
- **Database**: MySQL
- **Server**: Apache/Nginx (depending on deployment)

## 💻 Installation

### Prerequisites

- **PHP**: Version 7.4 or higher
- **MySQL**: Version 5.7 or higher
- **Apache/Nginx**: For serving the application

### Steps to Set Up

1. **Clone the Repository**
   ```bash
   git clone https://github.com/markme44/online-thesis-archiving-system.git
   cd online-thesis-archiving-system
   ```

2. **Set Up the Database**
   - Import the provided SQL schema into your MySQL database.
   - Create a `.env` file (or update `config.php`) with your database credentials:
     ```ini
     DB_HOST=localhost
     DB_NAME=thesis_archiving
     DB_USER=root
     DB_PASSWORD=your_password
     ```

3. **Configure the Server**
   - Configure Apache or Nginx to serve the application directory.
   - Ensure that `mod_rewrite` is enabled in Apache for URL rewriting.

4. **Install Dependencies**
   - If applicable, install PHP dependencies using Composer:
     ```bash
     composer install
     ```

5. **Run the Application**
   - Start your server and navigate to `http://localhost/online-thesis-archiving-system` to view the application.

## 🔧 Usage

1. **Register**: Create an account or log in if you already have one.
2. **Upload**: Navigate to the upload section to submit your thesis papers.
3. **Search**: Use the search bar to find specific theses or filter by categories.
4. **Manage**: Admins can manage users and monitor submissions through the admin panel.

## 📞 Contact

For any questions or support, please reach out to:

- **Email**: [markme44.mm@gmail.com](mailto:markme44.mm@gmail.com)
- **GitHub Issues**: [Submit an Issue](https://github.com/markme44/online-thesis-archiving-system/issues)

