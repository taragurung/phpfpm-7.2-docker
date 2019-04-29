#!/bin/bash
set -e
service php7.2-fpm start && tail -f /dev/null
