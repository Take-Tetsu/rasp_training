from django.shortcuts import render
from django.contrib.auth.models import User
from rest_framework import generics
from api.serializers import UserSerializer
# Create your views here.

from rest_framework.authentication import BasicAuthentication
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response

class UserList(generics.ListAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer
    
class LoginView(generics.ListCreateAPIView):
    authentication_classes = [BasicAuthentication]
    permission_classes = [IsAuthenticated]
    
    def get(self, request, format=None):
        content = {
            'user': (request.user),
            'auth': (request.auth),
        }
        return Response(content)