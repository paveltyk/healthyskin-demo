import React, { useState } from 'react';
import axios from 'axios';
import './App.css';

function App() {
  const [email, setEmail] = useState('');
  const [error, setError] = useState('');
  const [isSubmitted, setSubmitted] = useState(false);
  const [isProcessing, setProcessing] = useState(false);

  async function handleSubmit(e) {
    e.preventDefault();
    e.stopPropagation();

    try {
      setProcessing(true);
      await axios.post('/api/subscriptions', { email });
      setSubmitted(true);
    } catch (error) {
      setSubmitted(true);
      setError('server responded with error');
    }
  }

  if (isSubmitted) {
    return (
      <div className="App">
        {
          error
            ? <p className="error">Failed to submit: {error}</p>
            : <p className="success">Thank you! Email <b>"{email}"</b> has been added to the list.</p>
        }
      </div>
    );
  }

  return (
    <div className="App">
      <form onSubmit={handleSubmit}>
        <input
          type="email"
          placeholder="Your email..."
          value={email}
          onChange={(e) => setEmail(e.target.value)}
          disabled={isProcessing} />
      </form>
    </div>
  );
}

export default App;
