from django.db import models
from tinymce.models import HTMLField

# Create your models here.
class Home(models.Model):
    Full_name = models.CharField(max_length=100)
    role=models.CharField( max_length=200)
    image= models.ImageField(upload_to="home/", blank=True, null=True)
    description= HTMLField()
   
    def __str__(self):
        return self.Full_name
    

class Services(models.Model):
    service_icon = models.CharField( max_length=50)
    service_name = models.CharField( max_length=50)
    service_description = HTMLField()


    def __str__(self):
        return self.service_name
    
class About(models.Model):
    about_image= models.ImageField(upload_to="about/", blank=True, null=True)
    about_name=models.CharField( max_length=100)
    about_role=models.CharField( max_length=150)
    about_description=HTMLField()


    def __str__(self):
        return self.about_name
    
class Skills(models.Model):
    icon_name=models.CharField( max_length=100)
    skill_name=models.CharField( max_length=100)

    def __str__(self):
        return self.skill_name
    

class Portfolio(models.Model):
    project_name = models.CharField(max_length=100)
    project_link=models.CharField( max_length=300)
    project_image= models.ImageField(upload_to="project_pics/", blank=True, null=True)
    
    def __str__(self):
        return self.project_name
    

class Contact_me(models.Model):
    number = models.CharField( max_length=20)
    mail=models.CharField( max_length=150)
    address=models.CharField( max_length=300)
    
    def __str__(self):
        return self.mail
    

class Social_links(models.Model):
    Linkin_link = models.CharField( max_length=400)
    Github_link=models.CharField( max_length=400)
    Instagram_link=models.CharField( max_length=400)
    
    def __str__(self):
        return ("Links")