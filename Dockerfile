# 🧱 Base image: Enterprise Hardened Ubuntu 22.04 CIS 1.4
FROM 661539128717.dkr.ecr.ap-south-1.amazonaws.com/hardened-ubuntu:ubuntu-22.04-cis1.4-20251107170841-6cbd6dc

WORKDIR /app
COPY src/ /app

# 🧩 Non-root security context
RUN useradd -m appuser && chown -R appuser /app
USER appuser

EXPOSE 8080
CMD ["python3", "main.py"]
