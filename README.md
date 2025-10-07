# DevOps Internship Final Project

**Name:** Shubhranshu Pandey  
**Date:** 07-Oct-2025

---

## Project Overview

This project demonstrates a small but realistic **DevOps workflow** using open-source tools. The workflow includes:

- Linux scripting basics
- Docker containerization
- CI/CD with GitHub Actions
- Nomad job deployment
- Monitoring with Grafana Loki

Each step produces real output for the next, simulating a complete DevOps pipeline.

---

## Step-by-Step Instructions

### 1. Git & GitHub Setup

Clone the repository and view the sample script:

```bash
git clone https://github.com/shubhranshu-pandey/devops-intern-final.git
cd devops-intern-final
python hello.py

	•	Output: Hello, DevOps!

⸻

2. Linux Scripting

Run the system info script:

cd scripts
chmod +x sysinfo.sh
./sysinfo.sh

	•	Displays current user, date, and disk usage.

⸻

3. Docker Containerization

Build and run the Docker container:

docker build -t hello-devops .
docker run --rm hello-devops

	•	Output: Hello, DevOps!

⸻

4. CI/CD with GitHub Actions
	•	Workflow file: .github/workflows/ci.yml
	•	Runs automatically on every push to main.
	•	CI/CD badge:

![CI](https://github.com/shubhranshu-pandey/devops-intern-final/actions/workflows/ci.yml/badge.svg)

	•	Automatically executes hello.py in a clean environment.

⸻

5. Nomad Job Deployment

Deploy the Docker container using Nomad:

cd nomad
nomad job run hello.nomad

	•	Deploys the container as a service with minimal CPU and memory.

⸻

6. Monitoring with Grafana Loki
	1.	Start Loki:

docker run -d --name loki -p 3100:3100 grafana/loki:2.8.0

	2.	(Optional) Run Grafana:

docker run -d --name grafana -p 3000:3000 grafana/grafana:10.0.0

	•	Access Grafana: http://localhost:3000
	•	Login: admin/admin
	•	Add Loki as data source: http://localhost:3100

	3.	View container logs:

docker logs hello-devops

	•	Query in Grafana: {job="docker"}
	•	Full setup instructions in monitoring/loki_setup.txt

⸻
```
