# DevOps Internship Final Project

**Name:** Shubhranshu Pandey  
**Date:** 07-Oct-2025  

---

## Project Overview
This project demonstrates a DevOps workflow using open-source tools, including:

- Linux scripting  
- Docker containerization  
- CI/CD with GitHub Actions  
- Nomad job deployment  
- Monitoring with Grafana Loki  

Each step builds on the previous, simulating a realistic DevOps pipeline.

---

## Repository Structure

devops-intern-final/
├─ README.md
├─ hello.py
├─ Dockerfile
├─ scripts/
│   └─ sysinfo.sh
├─ .github/workflows/
│   └─ ci.yml
├─ nomad/
│   └─ hello.nomad
└─ monitoring/
└─ loki_setup.txt

---

## Step 1: Git & GitHub Setup
Clone the repository:
```bash
git clone https://github.com/shubhranshu-pandey/devops-intern-final.git
cd devops-intern-final

hello.py script:

print("Hello, DevOps!")

Commit and push to GitHub to initialize the repo.

⸻

Step 2: Linux & Scripting Basics

Navigate to scripts folder and run system info:

cd scripts
chmod +x sysinfo.sh
./sysinfo.sh

Output:
	•	Current user (whoami)
	•	Current date (date)
	•	Disk usage (df -h)

⸻

Step 3: Docker Basics

Build and run Docker container:

docker build -t hello-devops .
docker run --rm hello-devops

Output:

Hello, DevOps!


⸻

Step 4: CI/CD with GitHub Actions

Workflow file: .github/workflows/ci.yml

Runs automatically on every push to main.

CI/CD badge:

![CI](https://github.com/shubhranshu-pandey/devops-intern-final/actions/workflows/ci.yml/badge.svg)

	•	Automatically executes hello.py in a clean environment.

⸻

Step 5: Job Deployment with Nomad

Navigate to Nomad folder and run job:

cd nomad
nomad job run hello.nomad

	•	Deploys Docker container as a Nomad service
	•	Allocates minimal CPU and memory

⸻

Step 6: Monitoring with Grafana Loki
	1.	Start Loki using Docker:

docker run -d --name loki -p 3100:3100 grafana/loki:2.8.0

	2.	(Optional) Run Grafana for visualization:

docker run -d --name grafana -p 3000:3000 grafana/grafana:10.0.0

	•	Access Grafana: http://localhost:3000
	•	Login: admin/admin
	•	Add Loki as data source: http://localhost:3100

	3.	View container logs:

docker logs hello-devops

	•	Query logs in Grafana: {job="docker"}
	•	Full instructions documented in monitoring/loki_setup.txt
