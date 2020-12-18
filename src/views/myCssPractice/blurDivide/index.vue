    <template>
         <div class="test">
           <div class="box"></div>
           <div class="box1"></div>
         </div>
    </template>

<style scoped lang="scss">
   .test {
      width: 100%;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      background-color: #ffffff;
      filter: contrast(30);
    }
  
    .box {
      width: 80px;
      height: 80px;
      border-radius: 50%;
      position: absolute;
      background-color: #000099;
      filter: blur(20px);
      animation: move 3s ease-in-out infinite;
    }
  
    .box1 {
      width: 350px;
      height: 50px;
      position: absolute;
      background-color: #000099;
      filter: blur(20px);
      animation: kfrotate 5s ease-in-out infinite;
    }
  
    @keyframes move {
      0% {
        transform: translateY(120px);
      }
      50% {
        transform: translateY(-120px);
      }
      100% {
        transform: translateY(120px);
      }
    }
  
    @keyframes kfrotate {
      0% {
        transform: rotateY(0deg);
      }
      50% {
        transform: rotateY(75deg);
      }
      100% {
        transform: rotateY(0deg);
      }
    }
</style>
