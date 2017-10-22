from django.contrib import admin
from .models import *

# username: admin
# password: 2231jjnfl

# Add manage restaurants to the admin page

class ResultAdmin(admin.ModelAdmin):
    list_display = ['placeid','placename', 'streetno', 'street', 'city', 'postcode','state', 'phonenumber',
    'emailaddress', 'departmentid', 'industryid', 'categoryid']
    ordering = ['placeid']
    raw_id_fields = ['departmentid', 'industryid', 'categoryid']
    search_fields = ['placename', 'streetno', 'street', 'city', 'postcode', 'state', 'phonenumber',
    'emailaddress']

admin.site.register(Result, ResultAdmin)

class CategoryAdmin(admin.ModelAdmin):
    list_display = ['categoryid', 'categoryname']
    list_display_links = ['categoryid', 'categoryname']
    ordering = ['categoryid']
    search_fields = ['categoryname']

admin.site.register(Category, CategoryAdmin)

class MembersAdmin(admin.ModelAdmin):
    list_display = ['userid', 'typename' ,'username','firstname','lastname','email']
    ordering = ['userid']
    search_fields = ['typename' ,'username','firstname','lastname','email']
admin.site.register(Member, MembersAdmin)


class DepartmentAdmin(admin.ModelAdmin):
    list_display = ['departmentid','departmentname']
    ordering = ['departmentid']
    search_fields = ['departmentname']

admin.site.register(Department, DepartmentAdmin)

class IndustryAdmin(admin.ModelAdmin):
    list_display = ['industryid','industryname']
    ordering = ['industryid']
    search_fields =  ['industryname']

admin.site.register(Industry, IndustryAdmin)

class ImageAdmin(admin.ModelAdmin):
    list_display = ['placeid', 'imagename']
    raw_id_fields = ['placeid']
    ordering = ['placeid']

admin.site.register(Image, ImageAdmin)

class LocationAdmin(admin.ModelAdmin):
    list_display = ['placeid', 'latitude', 'longitude']
    ordering = ['placeid']
    raw_id_fields = ['placeid']

admin.site.register(Location, LocationAdmin)


