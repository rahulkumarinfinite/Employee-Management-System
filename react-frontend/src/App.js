import { Routes, Route, Link } from 'react-router-dom';
import Login from './Login';
import SignUp from './SignUp';
import './App.css';

function Home()   { return <h2>Home</h2>; }
function About()  { return <h2>About</h2>; }
function Contact(){ return <h2>Contact</h2>; }

export default function App() {
  return (
    <div style={{ padding: 16 }}>
      <nav style={{ display: 'flex', gap: 12, marginBottom: 16 }}>
       
       
      </nav>

      <Routes>
      
        <Route path="login" element={<Login />} />
        <Route path="SignUp" element={<SignUp />} />
        
        {/* 404 fallback */}
        <Route path="*" element={<h2>404 - Not Found</h2>} />
      </Routes>
    </div>
  );
}
