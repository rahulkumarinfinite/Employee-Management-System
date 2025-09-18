import logo from './logo.svg';
import { Routes, Route, Link } from 'react-router-dom';
import './App.css';

function Login() {
  return (
  
    <div className="login-container">
    <h2>Login</h2>
    /login
    <input type="email" name="email" placeholder="Email" required="" />
    <input type="password" name="password" placeholder="Password" required="" />
    <button type="submit">Login</button>
    <div className="signup-link">Don't have an account? <Link to="/SignUp">SignUp</Link></div>
  </div>
  );
}

export default Login;
