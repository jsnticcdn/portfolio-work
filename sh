body {
    perspective: 1000px;
  }
  
  .work {
    top: 70px;
    width: 100vw;
    height: calc(100vh - 70px);
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: #242424;
    position: relative;
    overflow: hidden;
  }
  
  .slider {
    height: 600px;
    display: flex;
    align-items: center;
    justify-content: center;
    position: absolute;
    left: 0;
    transition: all ease-out 0.6s;
  }
  
  .container {
    width: 100vw;
    display: flex;
    align-items: center;
    justify-content: center;
  }
  
  .item {
    width: 500px;
    height: 400px;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 20px;
    overflow: hidden;
    transform-style: preserve-3d;
  }
  
  .item.active {
    /* animation: fade linear 0.8s; */
  }
  
  @keyframes fade {
    0% {
      opacity: 0.8;
      background-color: rgb(212, 52, 52);
    }
    50% {
      opacity: 0.2;
      background-color: rgb(168, 51, 51);
    }
    75% {
      opacity: 0.6;
      background-color: rgb(168, 51, 51);
    }
    90% {
      transform: translateZ(-100px) rotate3d(1, 1, 1, 720deg) skew(10deg)
        scale3d(0.5, 0.4, 0.4);
      opacity: 0.2;
    }
    100% {
      /* display: none; */
      background-color: black;
      transform: translateZ(-100px) rotate3d(0, 1, 1, 720deg) skew(10deg)
        scale3d(1, 1, 0.4);
      opacity: 1;
    }
  }
  
  .left {
    flex: 5;
    height: 100%;
    width: 100%;
    background-color: rgb(247, 68, 104);
    display: flex;
    align-items: center;
    flex-direction: column;
    justify-content: center;
  }
  
  .title {
    color: white;
    width: 100%;
    text-align: center;
    font-size: 2rem;
    font-family: Arial, Helvetica, sans-serif;
    font-weight: 200;
    background-color: rgb(139, 59, 86);
  }
  
  .desc {
    width: 100%;
    height: 20%;
    text-align: center;
    margin-top: 2.5rem;
    color: white;
    font-family: monospace;
    font-size: 1rem;
    font-weight: 200;
  }
  
  .right {
    flex: 8;
    height: 100%;
    width: 100%;
    overflow: hidden;
    background-color: rgb(255, 255, 255);
  }
  
  .right img {
    width: 370px;
    height: 350px;
    height: 100%;
    transform: rotate(-10deg);
    object-fit: cover;
  }
  
  .arrow {
    position: absolute;
    width: 50px;
    height: 50px;
    font-size: 3rem;
    color: white;
    transition: all ease-in-out 0.3s;
    cursor: pointer;
  }
  
  .leftArrow {
    left: 10%;
  }
  .leftArrow:hover {
    transform: translateX(-15%);
  }
  
  .rightArrow {
    right: 10%;
  }
  
  .rightArrow:hover {
    transform: translateX(15%);
  }