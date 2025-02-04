from django.shortcuts import render
from django.http import HttpRequest, HttpResponse, JsonResponse
from django.shortcuts import redirect


auth_url_ft = "https://api.intra.42.fr/oauth/authorize?client_id=u-s4t2ud-6f95013ff80b03205f10c6858a27d612b0471205a3be99b15a164083c741aa4f&redirect_uri=http%3A%2F%2F127.0.0.1%3A8000%2Foauth2%2Fredirect&response_type=code"

# Create your views here.
def home(request: HttpRequest) -> HttpResponse:
	return JsonResponse({'message': 'Hello, World!'})	

def ftlogin(request: HttpRequest):
	return redirect(auth_url_ft)