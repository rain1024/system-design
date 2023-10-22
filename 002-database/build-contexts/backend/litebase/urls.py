from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import UserViewSet
from django.contrib import admin

router = DefaultRouter()
router.register(r'users', UserViewSet)

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/', include(router.urls)),
]
