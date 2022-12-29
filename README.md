# Dashboard app

### Overview

- **Description:** This repository contains the front end code that underlies the [dashboard app](https://github.com/coda-platform/dashboard-app). 
- **Primary author(s):** Kevin Arsenault [[@arsenaultk9](https://github.com/arsenaultk9)], Alexandre Hamel [[@ahamelmcgill](https://github.com/ahamelmcgill)], Xuefei Shi [[@xuefeishi](https://github.com/xuefeishi)], Jeffrey Li [[@JeffreyLi16](https://github.com/JeffreyLi16)], Maxime Lavigne [[@malavv](https://github.com/malavv)].
- **Contributors:** Louis Mullie [[@louism](https://github.com/louismullie)].
- **License:** The code in this repository is released under the GNU General Public License, V3.

### Project setup

```
npm install
```

### Compile and serve for development (with hot reload)

```
npm run serve
```

Launches on `https://localhost:8000` by default.

### Compile and minify for production

```
npm run build
```

### Security analysis

**Trivy (Most severe)**
docker run --rm -v C:\dev\trivy:/root/.cache/ -v //var/run/docker.sock:/var/run/docker.sock  aquasec/trivy image coda-hub-dashboard:latest --security-checks vuln > report.txt

**npm**
npm audit
