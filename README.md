<p align="center">
  <img src="banner.png" alt="AWS Navigator Banner" width="100%" height="200" style="object-fit: cover;">
</p>

<h1 align="center">🧭 AWS Navigator</h1>

<p align="center">
  <a href="https://ajaygangwar945.github.io/AWS-Navigator/"><img src="https://img.shields.io/badge/Live%20Demo-GitHub%20Pages-007ec6?style=for-the-badge&logo=github&logoColor=white" alt="Live Site"></a>
  <img src="https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white" alt="AWS Badge">
  <img src="https://img.shields.io/badge/Nginx-009639?style=for-the-badge&logo=nginx&logoColor=white" alt="Nginx Badge">
  <img src="https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white" alt="Docker Badge">
  <img src="https://img.shields.io/badge/Jenkins-D24939?style=for-the-badge&logo=jenkins&logoColor=white" alt="Jenkins Badge">
  <img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white" alt="HTML5 Badge">
  <img src="https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white" alt="CSS3 Badge">
  <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black" alt="JavaScript Badge">
</p>

An elegant, mobile-responsive quick-reference guide and navigator for core Amazon Web Services (AWS) resources, standard terminal commands, and fundamental cloud concepts.

---

## 🚀 View Live Site

The project is live and accessible online.

<a href="https://ajaygangwar945.github.io/AWS-Navigator/">
    <img src="https://img.shields.io/badge/Live%20Demo-GitHub%20Pages-007ec6?style=for-the-badge&logo=github&logoColor=white" alt="Live Demo" /></a>

---

## 🚀 Key Features

* **Fully Mobile & Tablet Responsive**: Adapts seamlessly to screen viewports of all sizes with a slide-out navigation menu drawer, custom column stacking, and horizontal table scrolling.
* **Interactive CLI Command List**: Copy standard commands directly from the dashboard using the built-in copy-to-clipboard buttons (optimized for touchscreen usability).
* **Core AWS Concepts**: Quick summaries of key architectures (Regions & AZs, VPC Subnets, IAM Least Privilege, AWS Well-Architected Framework, Event-Driven architectures, and more).
* **Cheatsheet Reference**: Quick guide to common global CLI flags (`--region`, `--profile`, `--query`, `--dry-run`, and `--output`).

---

## 📁 Project Structure

```text
.
├── .dockerignore      # Excludes metadata and pipeline configurations from container context
├── Dockerfile         # Nginx static server container recipe
├── Jenkinsfile        # Local Windows CI/CD pipeline script (SCM Polling config)
├── README.md          # Main README documentation (this file)
├── banner.png         # README header banner image
├── documentation.txt  # Implementation history and setup steps text
└── index.html         # Main responsive AWS Navigator web page
```

---

## 🐳 Running with Docker

You can package and run the static page locally in an Nginx-backed Docker container.

### 1. Build the Image

```bash
docker build -t ajaygangwar945/aws-navigator:latest .
```

### 2. Run the Container

```bash
docker run -d -p 8080:80 --name aws-navigator ajaygangwar945/aws-navigator:latest
```

*Open **[http://localhost:8080](http://localhost:8080)** on your machine to view the site.*

---

## ⚙️ CI/CD Pipeline (Jenkins)

The repository includes a `Jenkinsfile` pre-configured to run automatically in a local laptop development environment:

* **Trigger**: Automatic SCM Polling (polls GitHub once every 2 minutes; does not require exposing incoming webhook ports).
* **Credentials Binding**: Utilizes Jenkins environment credentials (`dockerhub-creds` ID) and signs in securely via `--password-stdin` to avoid plain-text password exposure.
* **Auto Cleanup**: Triggers `docker rmi` in a post-build step to maintain local disk storage on your laptop.

---

## 📄 Development Details

For detailed implementation history, responsive layout specifications, and pipeline troubleshooting guides, refer to [documentation.txt](documentation.txt).
