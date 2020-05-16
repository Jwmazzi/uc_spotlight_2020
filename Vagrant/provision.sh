# Baseline Tools
sudo yum -y install net-tools vim git wget tree

# Install Miniconda
wget -P /opt https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash /opt/Miniconda3-latest-Linux-x86_64.sh -b -p /opt/miniconda

# Fetch UC 2020 Spotlight Code
git clone https://github.com/Jwmazzi/uc_spotlight_2020.git /opt/uc_flask

# Create Environment
/opt/miniconda/bin/conda create --name uc python=3.6 -y

# Install Dependencies
source /opt/miniconda/bin/activate uc
pip install -r /opt/uc_flask/env/req.txt
python -c "import nltk; nltk.download('punkt')"

# Run Flask
python /opt/uc_flask/manage.py run --cert=adhoc -h 0.0.0.0