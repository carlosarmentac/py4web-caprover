# What is py4web-caprover?

## It's a CapRover starting point to deploy PY4WEB amazing Web Apps and API's.

[<img src="https://py4web.com/_documentation/static/en/_static/logo.png" width="150"/>](https://py4web.com/_documentation/static/en/chapter-01.html)
[<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXFLsSf48pC2pIX1QLWOeJoHIVCEGdca7-gQ&usqp=CAU" width="100"/>](https://py4web.com/_documentation/static/en/chapter-01.html)
[<img src="https://caprover.com/img/logo.png" width="150"/>](https://caprover.com/)

PY4WEB is a web framework for rapid development of efficient database driven web applications. It is an evolution of the popular web2py framework but much faster and slicker.

- Main web site: https://py4web.com
- GitHub repository: https://github.com/web2py/py4web
- Official documentation site: https://py4web.com/_documentation
- License: `BSD-3-Clause License <https://github.com/web2py/py4web/blob/master/LICENSE.md>`\_\_

[Read more about PY4WEB here...](https://py4web.com)

- 🔥 Fire 🔥

## Features

- Web Dashboard (admin)
- Documentation
- So many example Apps

## Installation

## Deploy using Caprover

[Caprover](https://caprover.com/) is a tool that turns your personal VPS into a Platform as a Service comparable to [dokku](https://dokku.com/) or Heroku.

1.  [Get started with Caprover on your VPS and your CLI](https://caprover.com/docs/get-started.html)
2.  Create a new app named `flask` (or anything else you like) in the `Caprover interface`
3.  Inside the `HTTP Settings` section of the new app enable HTTPS and select `Force HTTPS by redirecting all HTTP traffic to HTTPS`
4.  On your local machine, clone this repository and `cd` into it `git clone https://github.com/carlosarmentac/py4web-caprover.git && cd py4web-caprover`
5.  Provide a PY4WEB dashboard Password: Edit "Dockerfile" file and change line 6:

        ARG password=none
6.  Need aditional Python libraries? Add it in "requirements.txt" file:

        psycopg2-binary
        # These libraries are required to be in "requirements.txt" file.
        # Other extra libraries like "mysql" or "requests"  must be added manually depending on your needs.

7.  Run `caprover deploy` and select your server and the app you just created
    - If this command doesn't exist, make sure that you followed [Step 3 of Getting Started with Caprover](https://caprover.com/docs/get-started.html#step-3-install-caprover-cli)

#### This repo is based on https://github.com/prakasharyaman/Flask-Api.git Thank You @prakasharyaman!
