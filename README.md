# Project Management System 🏗️

A modern, full-stack Project Management System built with **Laravel 11**, **Inertia.js**, and **React**. This application is designed to help teams and individuals manage projects, track tasks, and meet deadlines efficiently with a seamless Single Page Application (SPA) experience.

## 🚀 Features

- **User Authentication**: Secure login and registration using Laravel Breeze.
- **Dashboard**: Overview of project status and pending tasks.
- **Project Management**: Create, update, and delete projects with deadline tracking.
- **Task Management**:
    - Add tasks to specific projects.
    - Edit and delete tasks.
    - Update task status (Pending, In Progress, Completed).
    - Assign priorities (Low, Medium, High).
- **Task Filtering**:
    - View "All Tasks" across different projects.
    - "My Tasks" view for personal task management.
- **Responsive UI**: Built with Tailwind CSS and Headless UI for a modern look on all devices.
- **Real-time UX**: smooth transitions and instant feedback powered by Inertia.js.

## 🏗️ Tech Stack

This project leverages the latest web technologies for robust performance:

- **Backend**: [Laravel 11](https://laravel.com) (PHP 8.2+)
- **Frontend**: [React 18](https://react.dev)
- **Glue**: [Inertia.js 2.0](https://inertiajs.com) (Classic monolith routing with SPA feel)
- **Styling**: [Tailwind CSS 3](https://tailwindcss.com)
- **Database**: SQLite (Default) / MySQL / PostgreSQL supported
- **Testing**: [Pest](https://pestphp.com)

## 🛠️ Installation

Follow these steps to set up the project locally.

### Prerequisites

- PHP >= 8.2
- Composer
- Node.js & NPM

### Steps

1. **Clone the repository**

    ```bash
    git clone https://github.com/Wcoder547/Laravel-ProjectManagment.git
    cd Laravel-ProjectManagment
    ```

2. **Install Backend Dependencies**

    ```bash
    composer install
    ```

3. **Install Frontend Dependencies**

    ```bash
    npm install
    ```

4. **Environment Configuration**
   Copy the example environment file and configure it:

    ```bash
    cp .env.example .env
    ```

    _Note: The project is configured to use SQLite by default. If you prefer MySQL or PostgreSQL, update the `DB_CONNECTION` settings in the `.env` file._

5. **Generate Application Key**

    ```bash
    php artisan key:generate
    ```

6. **Database Setup**
   Create the SQLite database file (if using SQLite) and run migrations:

    ```bash
    # Linux/Mac
    touch database/database.sqlite

    # Windows (PowerShell)
    New-Item -ItemType File -Path database/database.sqlite

    # Run Migrations & Seeders
    php artisan migrate --seed
    ```

7. **Run the Application**
   You will need two terminals running simultaneously:

    **Terminal 1 (Laravel Server):**

    ```bash
    php artisan serve
    ```

    **Terminal 2 (Vite Development Server):**

    ```bash
    npm run dev
    ```

    Access the application at: [http://127.0.0.1:8000](http://127.0.0.1:8000)

## 🧪 Running Tests

This project uses Pest for testing. Run the test suite with:

```bash
php artisan test
```

## 🔧 Usage

1. **Register** a new account.
2. Navigate to **Projects** to create a new project.
3. Add **Tasks** to your projects.
4. Use the **My Tasks** view to focus on your assigned work.

## 📜 License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).

## 👨‍💻 Author

- [Waseem Akram](https://github.com/Wcoder547)
