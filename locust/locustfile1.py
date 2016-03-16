from locust import HttpLocust, TaskSet

def healthCheck(l):
        l.client.get("/health")

class UserBehavior(TaskSet):
        tasks = [healthCheck]

class WebsiteUser(HttpLocust):
        task_set = UserBehavior
