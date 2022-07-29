import random
import string

#  version our custom library
__version__ = '1.0.0'  #

class CustomLib(object):
    ROBOT_LIBRARY_VERSION = __version__
    # ROBOT_LIBRARY_SCOPE as global so accessed globally
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'

    def generate_email_name(self, name_length) -> str:
        letters = string.ascii_letters[:12]  # generate letter "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
        return ''.join(random.choice(letters) for i in range(name_length))

    def generate_random_email(self, name_length):
        domains = ["hotmail.com", "gmail.com", "volansys.com", "webmail.com", "mail.biz", "yahoo.com"]
        return self.generate_email_name(name_length) + '@' + random.choice(domains)

    def generate_random_password(self,pass_length):
        special_char = ["@", "#", "$", "*", "%"]
        return self.generate_email_name(pass_length) + random.choice(special_char) + str(random.randint(123,789))