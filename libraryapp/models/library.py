from django.db import models

class Library(models.Model):

    title = models.CharField(max_length=50)
    address = models.CharField(max_length=100)

    def __str__(self):
        return self.title

    def get_absolute_url(self):
        return reverse('library_detail', kwargs={'pk': self.pk})

    

    


