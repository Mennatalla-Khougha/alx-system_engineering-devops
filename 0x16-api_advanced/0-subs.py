#!/usr/bin/python3
"""Script that queries the Reddit API and returns the number of subscribers"""
import requests


def number_of_subscribers(subreddit):
    """queries the Reddit API and returns the number of subscribers"""
    url = f"https://www.reddit.com/r/{subreddit}/about.json"
    response = requests.get(url, allow_redirects=False)
    print(response.status_code)
    if response.status_code != 200 :
        return 0
    
    data = response.json()
    print(data['data']["subscribers"])
    return data['data']["subscribers"]
