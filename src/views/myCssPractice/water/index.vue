    <template>
      <div class="test">
          <div class="box"></div>
          <div class="box"></div>
          <div class="box"></div>
          <div class="collection"></div>
    </div>
    </template>

<style scoped lang="scss">
  .test {
    width: 100%;
    height: 100vh;
    background-color: #000000;
    display: flex;
    justify-content: center;
    align-items: center;
    filter: contrast(10);
  }
  .collection {
    width: 80px;
    height: 80px;
    background-color: #fff;
    border-radius: 50%;
    filter: blur(5px);
  }
  .box {
    position: absolute;
    border-radius: 50%;
    width: 30px;
    height: 30px;
    background-color: #ffffff;
    filter: blur(5px);
    opacity: 0;
    animation: drop 2s ease-out infinite;
    transform: translateY(-240px);
  }

  .box:nth-of-type(1) {
    animation-delay: 0s;
  }
  .box:nth-of-type(2) {
    animation-delay: .2s;
  }
  .box:nth-of-type(3) {
    animation-delay: .5s;
  }

  @keyframes drop {
    0% {
      transform: translateY(240) scale(0.1);
      opacity: 0;
    }
    50% {
      transform: translateY(120);
      opacity: 1;
    }
    100% {
      transform: translateY(0);
      opacity: 1;
    }
  }
</style>
