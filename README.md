## 💻 Installation

### Prerequisites

- **PHP**: Version 7.4 or higher
- **MySQL**: Version 5.7 or higher
- **Apache/Nginx**: For serving the application

### Setup Instructions

1. **Clone the Repository**

   ```bash
   git clone https://github.com/markme44/online-thesis-archiving-system.git
   cd online-thesis-archiving-system
   ```

2. **Set Up the Database**
   - Import the provided SQL schema into your MySQL database.
   - Create a `.env` file in the root directory of the project (or update `config.php`) with the following database configuration:

     ```ini
     DB_HOST=localhost
     DB_NAME=thesis_archiving
     DB_USER=root
     DB_PASSWORD=your_password
     ```

3. **Configure the Server**
   - Configure Apache or Nginx to serve the application directory.
   - For Apache, ensure that the `mod_rewrite` module is enabled for URL rewriting.

4. **Install Dependencies**
   - If using Composer for PHP dependency management, run the following command to install required libraries:

     ```bash
     composer install
     ```

5. **Start the Application**
   - Launch your web server and navigate to `http://localhost/online-thesis-archiving-system` in your web browser to access the application.

## 🔧 Usage

1. **Register**: Sign up for a new account or log in with existing credentials.
2. **Upload**: Use the upload feature to submit your thesis papers.
3. **Search**: Utilize the search bar to find specific theses or filter results by categories.
4. **Manage**: Admin users can manage accounts and oversee thesis submissions through the admin panel.

## 📜 Contributing

We welcome contributions from the community! To contribute to the project, please follow these steps:

1. **Fork the Repository**: Create a personal copy of the repository on GitHub.
2. **Create a Branch**

   ```bash
   git checkout -b feature/your-feature
   ```

3. **Make Changes**: Implement your feature or bug fix.
4. **Commit Changes**

   ```bash
   git commit -am 'Add new feature or fix issue'
   ```

5. **Push Changes**

   ```bash
   git push origin feature/your-feature
   ```

6. **Submit a Pull Request**: Open a pull request on GitHub with a detailed description of your changes.

## 🛠️ Known Issues

- **File Upload Limit**: Uploading files larger than 2MB may not work as expected. We are working on a fix.
- **Search Optimization**: The search functionality may need improvements to handle larger datasets efficiently.

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

## 📞 Contact

For any questions or support, please contact:

- **Email**: [markme44.mm@gmail.com](mailto:markme44.mm@gmail.com)
- **GitHub Issues**: [Submit an Issue](https://github.com/markme44/online-thesis-archiving-system/issues)

## 📈 GitHub Stats

![Mark John Ignacio's GitHub Stats](https://github-readme-stats.vercel.app/api?username=markme44&show_icons=true&theme=radical)

![Top Languages](https://github-readme-stats.vercel.app/api/top-langs/?username=markme44&layout=compact&theme=radical)

---

Thank you for visiting the Online Thesis Archiving System repository! Feel free to explore, contribute, and help enhance this project.
