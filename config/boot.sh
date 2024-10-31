#!/usr/bin/env sh

mkdir -p ${AUTOGENSTUDIO_DATADIR}
chown -R appuser:appuser ${AUTOGENSTUDIO_DATADIR}

pip install --upgrade pip
pip install -U -r requirements.txt
