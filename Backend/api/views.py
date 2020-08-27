from django.shortcuts import render
from django.contrib.auth.models import User
from rest_framework import generics
from api.serializers import UserSerializer
# Create your views here.

class UserList(generics.ListAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer