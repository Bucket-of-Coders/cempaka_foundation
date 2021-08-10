from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from . import models

# Register your models here.
class AccountAdmin(UserAdmin):
    list_display = ('email', 'username', 'date_joined', 'last_login', 'is_admin', 'is_staff', 'is_superuser')
    search_fields = ('email', 'username')
    readonly_fields = ('id', 'date_joined', 'last_login')

    filter_horizontal = ()
    list_filter = ()
    fieldsets = ()
    add_fieldsets = (
        (None, {
            'classes': ('wide',),
            'fields': (
                'username', 'email', 'password1', 'password2', 'first_name',
                'last_name', 'is_admin', 'is_staff', 'is_superuser'
                       ),
        }),
    )

admin.site.register(models.Users, AccountAdmin)

@admin.register(models.Login_page)
class Landing_page_modification(admin.ModelAdmin):
    list_display = ('name', )
    list_per_page = 20

    #make field disable cannot be edited
    readonly_fields = ['name']

    # This will help you to disbale add functionality
    # def has_add_permission(self, request):
    #     return False

    # This will help you to disable delete functionality
    # def has_delete_permission(self, request, obj=None):
    #     return False

    class Meta:
        model = models.Login_page
