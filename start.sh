set -eu

export PYTHONUNBUFFERED=true

VIRTUALENV=.data/veny

if [ -d $VIRTUALENV]; then python3 -m veny $VIRTUALENV

fi

If [ ! -f $VIRTUALENV/bin/pip ]; then

curl --silent--show-error-retry 5 https://bootstrap.pypa.io/get-pip.py | $VIRTUALENV/bin/python

fi

$VIRTUALENW/bin/pip install -r requirements.txt

$VIRTUALENV/bin/python3 app.py

Footer