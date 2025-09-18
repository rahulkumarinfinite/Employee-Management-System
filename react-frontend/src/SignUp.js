
import logo from './logo.svg';
import { Link } from 'react-router-dom';

import './App.css';
import Login from './Login';

function SignUp() {
  return (
  
    <div className="signup-container">
    <h2>Sign Up</h2>
    <input type="text" name="fullname" placeholder="Full Name" required="" />
    <input type="email" name="email" placeholder="Email" required="" />
    <input type="password" name="password" placeholder="Password" required="" />
    <input
      type="password"
      name="confirm_password"
      placeholder="Confirm Password"
      required=""
    />
    <button type="submit">Sign Up</button>

    <div className="login-link">
        Already have an account? <Link to="/login">Login</Link>
      </div>
    </div>

  );
}

export default  SignUp;
