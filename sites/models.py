from django.db import models

# Create your models here.
class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'

#Members class
class Member(models.Model):
    userid = models.AutoField(db_column='userID', primary_key=True)  # Field name made lowercase.
    firstname = models.CharField(db_column='firstName', max_length=45)  # Field name made lowercase.
    lastname = models.CharField(db_column='lastName', max_length=45)  # Field name made lowercase.
    email = models.CharField(max_length=64)
    username = models.CharField(db_column='userName', max_length=64)  # Field name made lowercase.
    bio = models.CharField(max_length=100, blank=True, null=True)
    typename = models.CharField(db_column='typeName', max_length=11, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'member'

    def __str__(self):
        return self.userid, self.username,self.typename ,self.firstname, self.lastname, self.email

class Category(models.Model):
    categoryid = models.AutoField(db_column='categoryID', primary_key=True)  # Field name made lowercase.
    categoryname = models.CharField(db_column='categoryName', max_length=45)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'category'

    def __str__(self):
        template = '{0.categoryid} {0.categoryname}'
        return template.format(self)

class Industry(models.Model):
    industryid = models.AutoField(db_column='industryID', primary_key=True)  # Field name made lowercase.
    industryname = models.CharField(db_column='industryName', max_length=45, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'industry'

    def __str__(self):
        template = '{0.industryid} {0.industryname}'
        return template.format(self)

class Department(models.Model):
    departmentid = models.AutoField(db_column='departmentID', primary_key=True)  # Field name made lowercase.
    departmentname = models.CharField(db_column='departmentName', max_length=45, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'department'

    def __str__(self):
        template = '{0.departmentid} {0.departmentname}'
        return template.format(self)


class Result(models.Model):
    placeid = models.AutoField(db_column='placeID', primary_key=True)  # Field name made lowercase.
    placename = models.CharField(db_column='placeName', max_length=45)  # Field name made lowercase.
    streetno = models.IntegerField(db_column='streetNo', blank=True, null=True)  # Field name made lowercase.
    street = models.CharField(max_length=25, blank=True, null=True)
    city = models.CharField(max_length=25, blank=True, null=True)
    postcode = models.IntegerField(blank=True, null=True)
    state = models.CharField(max_length=3, blank=True, null=True)
    phonenumber = models.TextField(db_column='phoneNumber', blank=True, null=True)  # Field name made lowercase.
    emailaddress = models.CharField(db_column='emailAddress', max_length=100, blank=True, null=True)  # Field name made lowercase.
    categoryid = models.ForeignKey(Category, models.DO_NOTHING, db_column='categoryID')  # Field name made lowercase.
    industryid = models.ForeignKey(Industry, models.DO_NOTHING, db_column='industryID', blank=True, null=True)  # Field name made lowercase.
    departmentid = models.ForeignKey(Department, models.DO_NOTHING, db_column='departmentID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'result'

    def __str__(self):
        template = '{0.placeid} {0.placename} {0.streetno} {0.street} {0.city} {0.postcode} {0.state} {0.phonenumber} \
               {0.emailaddress} {0.departmentid} {0.industryid} {0.categoryid}'
        return template.format(self)

class Review(models.Model):
    placeid = models.ForeignKey(Result, models.DO_NOTHING, db_column='placeID')  # Field name made lowercase.
    userid = models.ForeignKey(Member, models.DO_NOTHING, db_column='userID')  # Field name made lowercase.
    rating = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    review = models.CharField(max_length=250, blank=True, null=True)
    timedate = models.DateTimeField(db_column='timeDate', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'review'

    def __str__(self):
        return self.placeid + ' - ' + self.userid

class Location(models.Model):
    placeid = models.ForeignKey('Result', models.DO_NOTHING, db_column='placeID', primary_key=True)  # Field name made lowercase.
    latitude = models.DecimalField(max_digits=10, decimal_places=8, blank=True, null=True)
    longitude = models.DecimalField(max_digits=10, decimal_places=7, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'location'

    def __str__(self):
        template = '{0.placeid} {0.latitude} {0.longitude}'
        return template.format(self)

class Image(models.Model):
    placeid = models.ForeignKey('Result', models.DO_NOTHING, db_column='placeID', primary_key=True)  # Field name made lowercase.
    imagename = models.CharField(db_column='imageName', max_length=45, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'image'

    def __str__(self):
        template = '{0.placeid} {0.imagename}'
        return template.format(self)

class UserDetails(models.Model):
    id = models.ForeignKey(AuthUser, models.DO_NOTHING, db_column='id', primary_key=True)
    dob = models.DateField()
    usertype = models.CharField(db_column='userType', max_length=11)  # Field name made lowercase.
    bio = models.CharField(max_length=256, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'user_details'




        


    
