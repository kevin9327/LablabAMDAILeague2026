# Mandated AMD AI League ROCm base image (supports gfx942 MI300X & gfx1100 RDNA3)
FROM rocm/pytorch:rocm10.0_ubuntu26.04_py3.14_pytorch_release_2.13.0

WORKDIR /app

COPY amd_league_agent.py /app/app.py

# Zero outbound network access required at evaluation time (--network none compliant)
ENTRYPOINT ["python3", "/app/app.py"]
