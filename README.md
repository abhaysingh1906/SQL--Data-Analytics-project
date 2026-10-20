# SQL--Data-Analytics-project
This repository contains a collection of SQL scripts demonstrating various analytical techniques, such as changes over time, cumulative, performance, data segmentation, part-to-whole analysis.
# SQL Data Analytics Project

The materials of the data analytics project: the data, every query from the videos, and the project roadmap.

You explore a sales database step by step, then go deeper with trends, segments and two full reports.

**New here? Open the setup guide in the `00_setup` folder.** It walks you through installing SQL Server and creating the database, on Windows and Mac, with the fixes for the common errors.

```
sql-data-analytics-project/
├── 00_setup/                        the setup guide, and the one-click Docker start for Mac
├── 01_datasets/                     the data, as a backup and as CSV files
│   ├── DataWarehouseAnalytics.bak   the database, ready to restore
│   └── csv-files/                   the same data, to build the database yourself
├── 02_docs/                         the project roadmap and notes
└── 03_scripts/                      the queries, in the order of the videos
    └── 00_init_database.sql         builds the database from the CSV files
```

Get the database in one of two ways:

- Restore `01_datasets/DataWarehouseAnalytics.bak` in SSMS. It needs SQL Server 2022 or newer.
- Or run `03_scripts/00_init_database.sql`. It builds the database from the CSV files in `C:\sql\sql-data-analytics-project\01_datasets\csv-files\`.

---

## 🗺️ What you build

![The project roadmap](02_docs/Project%20Roadmap.png)

The project has two parts, and the scripts follow them:

- **Exploratory data analysis**, scripts `01` to `06`: you get to know the data, from the tables and dates to the big numbers and the top performers.
- **Advanced analytics**, scripts `07` to `13`: you go deeper with trends, running totals, performance, part-to-whole and segments. Two reports close the project, one for customers and one for products.

---


## 🛡️ License

[MIT](LICENSE). Use it, change it, share it, with attribution.
