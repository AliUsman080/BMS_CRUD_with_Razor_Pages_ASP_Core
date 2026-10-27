# 📚 Book Management System (BMS) - CRUD with ASP.NET Core Razor Pages

[![.NET](https://img.shields.io/badge/.NET-9.0-purple.svg)](https://dotnet.microsoft.com/)
[![ASP.NET Core](https://img.shields.io/badge/ASP.NET_Core-Razor_Pages-blue.svg)](https://learn.microsoft.com/aspnet/core/razor-pages/)
[![SQL Server](https://img.shields.io/badge/Database-SQL_Server-red.svg)](https://www.microsoft.com/sql-server)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)

A clean, responsive, and functional **Book Management System (BMS)** built with **ASP.NET Core Razor Pages** and **ADO.NET (`Microsoft.Data.SqlClient`)** using a **Microsoft SQL Server** database.

---

## 🚀 Features

- 📖 **View Books**: Displays a list of all books stored in the database with their details.
- ➕ **Add New Book**: Form to add book title, author, description, publisher, status, and category.
- ✏️ **Edit Book Details**: Update existing book information with pre-populated form fields.
- ❌ **Delete Book**: Remove books from the database with confirmation.
- 🛡️ **SQL Injection Protection**: All database queries are executed using parameterized SQL commands.
- 🎨 **Responsive UI**: Built using Bootstrap 5 for clean desktop and mobile viewing.

---

## 🛠️ Tech Stack & Architecture

- **Framework**: [.NET 9](https://dotnet.microsoft.com/)
- **Application Type**: ASP.NET Core Razor Pages
- **Data Access**: ADO.NET (`Microsoft.Data.SqlClient` v5.2.2)
- **Database**: Microsoft SQL Server / LocalDB
- **Frontend / Styling**: Razor Pages (`.cshtml`), Bootstrap 5, CSS

---

## 📂 Project Structure

```text
BMS_CRUD_with_Razor_Pages_ASP_Core/
│
├── CRUD_Razor/                     # ASP.NET Core Project
│   ├── Models/
│   │   └── Book.cs                 # Book Data Model
│   ├── Pages/
│   │   ├── Books/
│   │   │   ├── Create.cshtml       # Add Book Page UI
│   │   │   ├── Create.cshtml.cs    # Add Book Logic
│   │   │   ├── Delete.cshtml       # Delete Confirmation UI
│   │   │   ├── Delete.cshtml.cs    # Delete Logic
│   │   │   ├── Edit.cshtml         # Edit Book UI
│   │   │   ├── Edit.cshtml.cs      # Edit Logic
│   │   │   ├── Index.cshtml        # Book Catalog UI
│   │   │   └── Index.cshtml.cs     # Book Catalog Logic
│   │   ├── Shared/
│   │   │   └── _Layout.cshtml      # Shared Navigation and Layout
│   │   └── ...
│   ├── appsettings.json            # Configuration and Connection Strings
│   ├── CRUD_Razor.csproj           # Project file and dependencies
│   └── Program.cs                  # Entry point & services configuration
│
├── database/
│   └── database.sql                # SQL Server schema and initial seed data
├── .gitignore                      # Git ignore rules for .NET
└── README.md                       # Project documentation
```

---

## 🗄️ Database Setup

1. Open **SQL Server Management Studio (SSMS)** or Azure Data Studio.
2. Open and execute the script located in [`database/database.sql`](database/database.sql):

```sql
CREATE DATABASE [BMS];
GO

USE [BMS];
GO

CREATE TABLE [dbo].[books] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL PRIMARY KEY,
    [title]       NVARCHAR (50) NULL,
    [author]      NVARCHAR (50) NULL,
    [description] NVARCHAR (50) NULL,
    [publisher]   NVARCHAR (50) NULL,
    [status]      NVARCHAR (50) NULL,
    [category]    NVARCHAR (50) NULL
);
GO
```

---

## ⚙️ Configuration

Update the database connection string in `CRUD_Razor/appsettings.json` to match your local SQL Server instance:

```json
{
  "Logging": {
    "LogLevel": {
      "Default": "Information",
      "Microsoft.AspNetCore": "Warning"
    }
  },
  "AllowedHosts": "*",
  "ConnectionStrings": {
    "DefaultConnection": "Server=localhost;Database=BMS;Trusted_Connection=True;TrustServerCertificate=True;"
  }
}
```

> **Note:** If you are using SQL Server Express or LocalDB, set `Server=.\\SQLEXPRESS` or `Server=(localdb)\\mssqllocaldb`.

---

## 🏃 Running the Project Locally

### Prerequisites
- [.NET 9.0 SDK](https://dotnet.microsoft.com/download/dotnet/9.0)
- Microsoft SQL Server (LocalDB, Express, or Developer edition)
- Visual Studio 2022, VS Code, or JetBrains Rider

### Steps

1. **Clone the repository:**
   ```bash
   git clone https://github.com/AliUsman080/BMS_CRUD_with_Razor_Pages_ASP_Core.git
   cd BMS_CRUD_with_Razor_Pages_ASP_Core/CRUD_Razor
   ```

2. **Restore dependencies and build:**
   ```bash
   dotnet restore
   dotnet build
   ```

3. **Run the application:**
   ```bash
   dotnet run
   ```

4. **Open in browser:**
   Navigate to the URL displayed in the console (e.g. `https://localhost:7000` or `http://localhost:5000`).
   Go to `/Books` to access the Book Management System!

---

## 👨‍💻 Author

**Ali Usman**
- GitHub: [@AliUsman080](https://github.com/AliUsman080)
