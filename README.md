# FlutterFusion

This starter project is designed to kickstart any new Flutter project effortlessly. It comes preconfigured with the `GetX` package, along with custom helpers and additional packages, to streamline app development. Following the `MVC` pattern, which is widely regarded as one of the best architectural patterns among developers, it ensures a clean separation of concerns and a solid foundation for building robust applications.

### Getting Started

Clone the repository

```shell
git clone https://github.com/thedevsbuddy/flutter_fusion.git my_awesome_project
```

### Features

Here are some fantastic features you’ll get by default when scaffolding your project with this starter template:

- **MVC Pattern**: The project follows the `MVC` pattern, which separates logic, UI, and models for better manageability. Additionally, a new service layer has been introduced to facilitate communication with APIs.
- **Modular Structure**: The modular structure allows developers to reuse modules across different projects, offering greater flexibility and scalability.
- **Module Generator**: A simple module generator tool has been added, enabling you to generate any module with a single command.
- **Local File Database**: This project includes a local file database, allowing you to create a data file for each local service and use it to store data efficiently.

## New features

#### Modulr Package - Generate modules in the project

This package is added as a helper toolkit to generate the module in the project with just a command
line.

## Modulr

Modulr is a code generator tool specially created for `FlutterFusion` starter kit, This helps you to generate all the files required for a Module.

### Usage of Modulr

Below is the example of how you can use this package and provided commands

1. `modulr:generate`: This is generates whole code for a module.
2. `modulr:controller`: This command generates a Controller file inside the provided module.
3. `modulr:page`: This command generates a Page/View file inside the provided module.

### Generate Module

```shell
dart pub run modulr:generate Blog
```

This will generate all the files required for a `Module`

#### Generated Files Inside your project's `lib/app/modules` directory.

```txt
📂 blog
├── 📂 controllers
│   └── 📄 blog_controller.dart
├── 📂 routes
│   ├── 📄 blog_router.dart
│   └── 📄 blog_routes.dart
├── 📂 services
│   ├── 📄 api_blog_service.dart
│   ├── 📄 blog_service.dart
│   └── 📄 local_blog_service.dart
├── 📂 views
│   └── 📄 blog_page.dart
└── 📄 blog_module.dart
```

### Generate Page/View

```shell
dart pub run modulr:page Comment --on=blog
```

This will generate the new view/page (`comment_page.dart`) along with it's controller (`comment_controller.dart`) file inside the `Blog` Module.

#### Generated files (including previously generated views)

```txt
📂 blog
├── 📂 controllers
│   ├── 📄 blog_controller.dart
│   └── 📄 comment_controller.dart
├── 📂 views
│   └── 📄 blog_page.dart
│   └── 📄 comment_page.dart
```

---

## Theme Builder

ThemeBuilder is a helper widget designed to simplify managing light and dark themes in your application.

If you want to add theming functionality to your app, this project includes ThemeBuilder, providing all the necessary code to seamlessly handle light and dark theme management.
