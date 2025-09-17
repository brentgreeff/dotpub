# Python + gcloud

https://www.python.org/downloads/release/python-3127/

export CLOUDSDK_PYTHON="/Library/Frameworks/Python.framework/Versions/3.12/bin/python3"

https://cloud.google.com/sdk/docs/install

gcloud components install COMPONENT_ID
gcloud components update

export CLOUDSDK_CORE_PROJECT=cdsoft

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/brent/google-cloud-sdk/path.bash.inc' ]; then . '/Users/brent/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/brent/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/brent/google-cloud-sdk/completion.bash.inc'; fi

gcloud config list
