FROM python:3.6-slim

COPY requirements.txt /requirements.txt

# Install python requirements
RUN apt-get update && apt-get install -y --no-install-recommends libgtk2.0-dev
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8888

# Launch Jupyter notebook
CMD ["jupyter", "notebook", "--allow-root", "--port=8888", "--ip=0.0.0.0", "--no-browser"]