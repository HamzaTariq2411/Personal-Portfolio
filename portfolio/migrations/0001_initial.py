# Generated by Django 4.2.3 on 2023-08-29 11:52

from django.db import migrations, models
import tinymce.models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='About',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('about_image', models.ImageField(blank=True, null=True, upload_to='about/')),
                ('about_name', models.CharField(max_length=100)),
                ('about_role', models.CharField(max_length=150)),
                ('about_description', tinymce.models.HTMLField()),
            ],
        ),
        migrations.CreateModel(
            name='Contact_me',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('number', models.CharField(max_length=20)),
                ('mail', models.CharField(max_length=150)),
                ('address', models.CharField(max_length=300)),
            ],
        ),
        migrations.CreateModel(
            name='Home',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Full_name', models.CharField(max_length=100)),
                ('role', models.CharField(max_length=200)),
                ('image', models.ImageField(blank=True, null=True, upload_to='home/')),
                ('description', tinymce.models.HTMLField()),
            ],
        ),
        migrations.CreateModel(
            name='Portfolio',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('project_name', models.CharField(max_length=100)),
                ('project_link', models.CharField(max_length=300)),
                ('project_image', models.ImageField(blank=True, null=True, upload_to='project_pics/')),
            ],
        ),
        migrations.CreateModel(
            name='Services',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('service_icon', models.CharField(max_length=50)),
                ('service_name', models.CharField(max_length=50)),
                ('service_description', tinymce.models.HTMLField()),
            ],
        ),
        migrations.CreateModel(
            name='Skills',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('icon_name', models.CharField(max_length=100)),
                ('skill_name', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Social_links',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Linkin_link', models.CharField(max_length=400)),
                ('Github_link', models.CharField(max_length=400)),
                ('Instagram_link', models.CharField(max_length=400)),
            ],
        ),
    ]
