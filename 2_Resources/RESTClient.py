import json
import requests
import uuid

# set token to my personal account
token = "edb78c26facbee6fac5af8ffccd1e3864100b78c"


def list_all_projects():
    projects = requests.get("https://api.todoist.com/rest/v1/projects",
                            headers={"Authorization": "Bearer %s" % token}).json()
    return projects


def create_new_project(project_name):
    project_input = json.dumps(
        {
            "name": project_name
        })

    new_project = requests.post("https://api.todoist.com/rest/v1/projects", data=project_input,
                                headers={
                                    "Content-Type": "application/json",
                                    "X-Request-Id": str(uuid.uuid4()),
                                    "Authorization": "Bearer %s" % token
                                }).json()
    return new_project

