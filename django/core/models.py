import uuid
from django.db import models


class BaseModel(models.Model):
    """ Base Model """
    
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    created_at = models.DateTimeField(verbose_name="Criado em", auto_now=True, auto_now_add=True)
    updated_at = models.DateTimeField(verbose_name="Atualizado em", auto_now=True, auto_now_add=True)

    class Meta:
        abstract = True
