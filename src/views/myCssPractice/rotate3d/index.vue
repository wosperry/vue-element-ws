<template>
      <div class="test-container">
        <div class="test">
          <div class="box"></div>
        </div>
      </div>
</template>

<script>
</script>


<style scoped lang="scss">
  .test-container{
    width: 100%;
    height: calc(100vh - 50px);
    overflow: hidden;
    padding: 0;
    margin: 0;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .test {
      transform-style: preserve-3d;
      transition: transform 0.3s ease-out;
      transform: rotate(25deg) skew(-25deg);
    }
    .test .box {
      transition: all 0.3s ease-in;
    }
    .test:hover {
      transform: rotate(0deg) skew(0deg);
    }
    .test .box {
      background-color: aliceblue;
      margin: 5px;
      width: 100px;
      height: 100px;
      border-radius: 100% 10% 10% 10%;
      box-shadow: 15px 15px 30px rgba(0, 0, 0, 1),
        inset 5px 5px 10px rgba(0, 0, 0, 0.5),
        inset -5px -5px 10px rgba(255, 255, 255, 1);
    }
    .test .box:hover {
      width: 120px;
      height: 120px;
      box-shadow: 0px -20px 30px rgba(0, 0, 0, 1),
        inset 5px 5px 10px rgba(0, 0, 0, 0.5),
        inset -5px -5px 10px rgba(255, 255, 255, 1);
    }
</style>
