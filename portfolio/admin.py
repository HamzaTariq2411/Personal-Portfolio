from django.contrib import admin
from .models import Home , Services, About, Skills, Portfolio, Contact_me, Social_links

class HomeAdmin(admin.ModelAdmin):

    def has_add_permission(self, request):
        # Check if an instance already exists
        return not Home.objects.exists()
    
admin.site.register(Home, HomeAdmin)


admin.site.register(Services)

class AboutAdmin(admin.ModelAdmin):

    def has_add_permission(self, request):
        # Check if an instance already exists
        return not About.objects.exists()
    
admin.site.register(About, AboutAdmin)

admin.site.register(Skills)

admin.site.register(Portfolio)

class Contact_meAdmin(admin.ModelAdmin):

    def has_add_permission(self, request):
        # Check if an instance already exists
        return not Contact_me.objects.exists()
    
admin.site.register(Contact_me, Contact_meAdmin)


class Skill_linksAdmin(admin.ModelAdmin):

    def has_add_permission(self, request):
        # Check if an instance already exists
        return not Social_links.objects.exists()
    
admin.site.register(Social_links, Skill_linksAdmin)