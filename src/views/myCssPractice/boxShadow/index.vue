<template>
  <div class="test">
      <div class="test-button">
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
      </div>
    </div>
</template>

<script>
</script>


<style scoped lang="scss">
  html,
  body {
    padding: 0;
    margin: 0;
    width: 100%;
    height: 100%;
    overflow: hidden;

  }
  .test {
    display: flex;
    height: calc(100vh - 50px);
    width: 100%;
    justify-content: center;
    align-items: flex-end;
     background-image: linear-gradient(
      90.4deg,
      rgba(255, 220, 163, 1) 21.2%,
      rgba(129, 255, 239, 1) 90.7%
    );
  }
  .test .test-button {
    width: auto;
    height: auto;
    display: flex;
    flex-wrap: wrap;
    align-content: flex-center;
    align-items: center;
    justify-content: space-around;
  }
  .test .test-button div {
    width: 70px;
    height: 70px;
    padding: 5px;
    margin-bottom: 10px;
    border-radius: 15px;
    box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.4),
      inset -5px -5px 15px rgba(0, 0, 0, 0.7),
      inset 5px 5px 10px rgba(255, 255, 255, 0.7);
    box-sizing: border-box;
    transition: all 0.2s ease-out;
  }
  .test .test-button div:hover {
    width: 78px;
    height: 78px;
    border-radius: 15px;
    margin-bottom: 0px;
    box-shadow: 20px 20px 10px rgba(0, 0, 0, 0.4),
      inset -5px -5px 15px rgba(0, 0, 0, 0.7),
      inset 5px 5px 15px rgba(255, 255, 255, 0.7);
    box-sizing: border-box;
  }
</style>
