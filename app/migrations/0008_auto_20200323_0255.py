# Generated by Django 3.0.4 on 2020-03-23 02:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0007_auto_20200323_0246'),
    ]

    operations = [
        migrations.AlterField(
            model_name='padata',
            name='current_ptc',
            field=models.FloatField(blank=True, null=True, verbose_name='Current PTC'),
        ),
        migrations.AlterField(
            model_name='padata',
            name='future_ptc',
            field=models.FloatField(blank=True, null=True, verbose_name='Future PTC'),
        ),
    ]
