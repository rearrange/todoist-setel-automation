import json
import requests
import uuid

# set token to my personal account
token = "edb78c26facbee6fac5af8ffccd1e3864100b78c"

# list all projects in my personal account
listAllProjects = requests.get("https://api.todoist.com/rest/v1/projects",
                               headers={"Authorization": "Bearer %s" % token}).json()
print(listAllProjects)

# create new project in my personal account
newProjectInput = json.dumps(
    {
        "name": "Movies to watch"
    })

createNewProject = requests.post("https://api.todoist.com/rest/v1/projects", data=newProjectInput,
                                 headers={
                                     "Content-Type": "application/json",
                                     "X-Request-Id": str(uuid.uuid4()),
                                     "Authorization": "Bearer %s" % token
                                 }).json()

print(createNewProject)

# delete the new project created via API
# need to get the id of the project, build the URL, then..
deleteNewProject = requests.delete("https://api.todoist.com/rest/v1/projects/2223151934", headers={"Authorization": "Bearer %s" % token})
