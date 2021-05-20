from django import forms
from .models import Posisipohon


class Addurlform(forms.ModelForm):
    class Meta:
        model = Posisipohon
        fields = ['urlmap']