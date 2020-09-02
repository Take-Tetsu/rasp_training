from rest_framework.test import APIRequestFactory

factory = APIRequestFactory()
request = factory.post('api/login', {'user'})