# 🌐 DNS Management Instructions

Welcome to the **DNS repository!** This repo is where we manage our **DNS zones and records** in version-controlled files. ✨

Whether you're adding a **new DNS zone** or editing **existing DNS records,** follow the steps below. These instructions assume you're using the **GitHub web interface**—no Git experience required.

---

## 📁 Repository Structure


- Each **DNS zone** is stored in a **separate `.yaml` file** under `/dns-zones/`.
- Each file contains **all records** (A, CNAME, MX, TXT, etc.) for that domain.

---

## 🚀 How to Add a New DNS Zone

1️⃣ **Go to the `/dns-zones/` folder:**
- In the repo, click `dns-zones/` to open the folder.

2️⃣ **Click `Add file` > `Create new file`.**

3️⃣ **Name your file:**
- Use the domain name as the filename.  
  👉 Example: `newdomain.com.yaml`

4️⃣ **Add your zone data:**
- Use the template below to add your records:

```yaml
zone: newdomain.com
ttl: 3600
records:
  - type: A
    name: '@'
    value: 192.0.2.1

  - type: CNAME
    name: www
    value: newdomain.com.

  - type: MX
    name: '@'
    value: mail.newdomain.com.
    priority: 10

  - type: TXT
    name: '@'
    value: 'v=spf1 include:_spf.google.com ~all'

- type: CNAME
  name: blog
  value: blog-hosting-service.com.

zone: example.com
ttl: 3600
records:
  - type: A
    name: '@'
    value: 93.184.216.34

  - type: A
    name: 'www'
    value: 93.184.216.34

  - type: MX
    name: '@'
    value: mail.example.com.
    priority: 10

  - type: TXT
    name: '@'
    value: 'v=spf1 include:_spf.example.com ~all'

  - type: CNAME
    name: 'blog'
    value: blogs.host.com.'


---

✅ **All set to copy and paste into GitHub now!** Let me know if you'd like to customize wording for your company/team, or add screenshots for extra clarity.
