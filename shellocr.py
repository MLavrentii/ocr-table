# shellocr.py
# Extract OCR using Tesseract
# Created by Abhijeet Singh

import subprocess
import shlex
# shlex is used for passing parameters

# subprocess.call(['./extract_text.sh'])
# Run above if no parameters are required

#subprocess.call(shlex.split('./extract_text.sh ./pdf/ ./txt/'))

#subprocess.call(["bash", "extract_text.sh", "./pdf/", "./txt/"])
subprocess.call("extract_text.bat ./pdf/ ./txt/", shell=True)