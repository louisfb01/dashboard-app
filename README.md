# Dashboard app

### Overview

- **Description:** This repository contains the front end code that underlies the [dashboard app](https://github.com/coda-platform/dashboard-app). 
- **Primary author(s):** Kevin Arsenault [[@arsenaultk9](https://github.com/arsenaultk9)], Alexandre Hamel [[@ahamelmcgill](https://github.com/ahamelmcgill)], Xuefei Shi [[@xuefeishi](https://github.com/xuefeishi)], Jeffrey Li [[@JeffreyLi16](https://github.com/JeffreyLi16)], Maxime Lavigne [[@malavv](https://github.com/malavv)].
- **Contributors:** Louis Mullie [[@louism](https://github.com/louismullie)].
- **License:** The code in this repository is released under the GNU General Public License, V3.

### Deployment in production

- cd ./front-end
- docker login -u ${USER} -p ${USER}
- ./publish.sh ${PERSONAL_ACCESS_TOKEN}
- Ask a VALERIA team member to update the image in openshift.

### Project setup

```
npm install
```

### Compiles and hot-reloads for development

```
npm run serve
```

Launch on `https://localhost:8000` by default.

### Compiles and minifies for production

```
npm run build
```

### Customize configuration

See [Configuration Reference](https://cli.vuejs.org/config/).

### Security analysis

**Trivy (Most severe)**
docker run --rm -v C:\dev\trivy:/root/.cache/ -v //var/run/docker.sock:/var/run/docker.sock  aquasec/trivy image coda-hub-dashboard:latest --security-checks vuln > report.txt

**npm**
npm audit
