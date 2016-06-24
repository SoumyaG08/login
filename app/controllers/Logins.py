"""
    Sample Controller File

    A Controller should be in charge of responding to a request.
    Load models to interact with the database and load views to render them to the client.

    Create a controller using this template
"""
from system.core.controller import *

class Logins(Controller):
    def __init__(self, action):
        super(Logins, self).__init__(action)
        """
        This is an example of loading a model.
        Every controller has access to the load_model method.
        """
        self.load_model('Login')
        self.db = self._app.db

        """
        
        This is an example of a controller method that will load a view for the client 

        """
   
    def index(self):
        """
        A loaded model is accessible through the models attribute 
        self.models['WelcomeModel'].get_users()
        
        self.models['WelcomeModel'].add_message()
        # messages = self.models['WelcomeModel'].grab_messages()
        # user = self.models['WelcomeModel'].get_user()
        # to pass information on to a view it's the same as it was with Flask
        
        # return self.load_view('index.html', messages=messages, user=user)
        """
        return self.load_view('index.html')

    def register(self):
        user_info = {
        'fname' : request.form['fname'],
        'lname' : request.form['lname'],
        'email' : request.form['email'],
        'pwd' : request.form['pwd'],
        'c_pwd' : request.form['c_pwd']
        }

        reg_valid = self.models['Login'].create_user(user_info)
        #Check reg_valid for True or False and then the other dictionary based on it:
        if reg_valid['status'] == True:
            # session['id'] = reg_valid['user']['id']
            session['name'] = reg_valid['user']['first_name']
            return redirect('/success')
        else:
            for message in reg_valid['errors']:
                flash(message)
            return redirect('/')

    def login(self):
        user = {
        'email' : request.form['email'],
        'pwd': request.form['pwd']
        }
        log_valid = self.models['Login'].login_user(user)
        if log_valid['status'] == True:
            session['name'] = log_valid['user']['first_name']
            return redirect('/success')
        else:
            for message in log_valid['errors']:
                flash(message)
            return redirect('/')

    def success(self):
        return self.load_view('success.html')


