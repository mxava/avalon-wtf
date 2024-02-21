import { useState } from 'react'
import avaLogo from './assets/avalon-wtf.svg'
import './App.css'

function App() {
  const [count, setCount] = useState<number>(0)

//these if statements feel wrong and i do not like them, but i don't know this language lol
  if ( count != 0 ) {
    if (count != 69) {
    return (
      <>
          <div>
          <a href="https://github.com/mxava" target="_blank">
            <img src={avaLogo} className="logo react" alt="avalon.wtf" />
          </a>
        </div>
        <h2>Seeking opportunities in ML infra, build & release, security, and more.</h2>
        <div className="card">
          <button onClick={() => setCount((count) => count + 1)}>
              you have made ava sad {count} times. you monster.
            </button>
        </div>
        <p className="read-the-docs">
          (will work 4 food 🥺👉👈)
        </p>
      </>
    )
  }

  else {
    return (
      <>
          <div>
          <a href="https://github.com/mxava" target="_blank">
            <img src={avaLogo} className="logo react" alt="avalon.wtf" />
          </a>
        </div>
        <h2>Seeking opportunities in ML infra, build & release, security, and more.</h2>
        <div className="card">
          <button onClick={() => setCount((count) => count + 1)}>
              you have made ava sad {count} times (nice.) you monster.
            </button>
        </div>
        <p className="read-the-docs">
          (will work 4 food 🥺👉👈)
        </p>
      </>
    )
  }
}
  else {
    return (
      <>
          <div>
          <a href="https://github.com/mxava" target="_blank">
            <img src={avaLogo} className="logo react" alt="avalon.wtf" />
          </a>
        </div>
        <h2>Seeking opportunities in ML infra, build & release, security, and more.</h2>
        <div className="card">
        <button onClick={() => setCount((count) => count + 1)}>
          do not click me
        </button>
        </div>
        <p className="read-the-docs">
          (will work 4 food 🥺👉👈)
        </p>
      </>
    )
  }


}

export default App
