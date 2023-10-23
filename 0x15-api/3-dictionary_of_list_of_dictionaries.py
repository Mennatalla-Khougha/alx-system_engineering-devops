#!/usr/bin/python3
"""This script retrieves and displays all TODO list from a REST API."""
import json
from requests import get


if __name__ == "__main__":
    api = f"https://jsonplaceholder.typicode.com/"

    response = get(api + "users")
    employee_info = response.json()
    employee_ids = [user['id'] for user in employee_info]
    data = {}
    for user in employee_ids:
        employee_id = f"users/{user}"
        to_do_list = f"todos?userId={user}"
        response = get(api + employee_id)
        employee_info = response.json()
        response = get(api + to_do_list)
        tasks = response.json()

        employee_data = [{"username": employee_info['username'],
                         "task": task['title'], "completed": task['completed']}
                         for task in tasks]

        data[user] = employee_data
    with open("todo_all_employees.json", 'w', ) as file:
        file = json.dump(data, file)
