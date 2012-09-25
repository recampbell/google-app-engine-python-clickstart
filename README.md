#Google App Engine Python ClickStart

<a href="https://grandcentral.cloudbees.com/#CB_clickstart=https://raw.github.com/recampbell/google-app-engine-python-clickstart/master/clickstart.json"><img src="https://s3.amazonaws.com/cloudbees-downloads/clickstart/clickstart-now.png"/></a>

This is a simple Python application which is deployed to Google App Engine. Be aware of the following caveats:

* This ClickStart assumes you've authorized your DEV@Cloud Jenkins to deploy to Google App Engine by visiting https://gae.cloudbees.com

* The tries to deploy to the application ID you provide when creating the ClickStart. If this fails, you can edit the job and click "Advanced" in the "Deploy Python Application to Google App Engine". Jenkins will then prompt you to create the application ID on Google App Engine, or you can change the application ID to one that already exists.