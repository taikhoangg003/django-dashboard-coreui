# Generated by Django 3.0.4 on 2020-03-09 07:07

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0002_auto_20200309_0328'),
    ]

    operations = [
        migrations.AlterField(
            model_name='padata',
            name='product_last_update',
            field=models.CharField(blank=True, max_length=65, null=True, verbose_name='Last update'),
        ),
    ]
