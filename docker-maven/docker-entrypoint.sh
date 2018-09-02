#!/bin/bash
dockerd >> /var/log/docker.log 2>&1 &
/bin/sh