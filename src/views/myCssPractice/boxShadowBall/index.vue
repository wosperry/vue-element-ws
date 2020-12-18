    <template>
      <div class="test-container">
        <div class="test"></div>
      </div>
    </template>

<style scoped lang="scss">
  .test {
    width: 90px;
    height: 90px;
    background-color: #efeeee;
    border-radius: 80px;
    transition: all 0.4s ease-out;
    box-shadow: 40px 40px 50px rgba(0, 0, 0, 0.7),
      inset -20px -20px 50px rgba(255, 255, 255, 0.7),
      inset 20px 20px 50px rgba(0, 0, 0, 1);
  }
  .test:hover {
    width: 100px;
    height: 100px;
    box-shadow: 100px 100px 50px rgba(0, 0, 0, 0.7),
      inset -20px -20px 50px rgba(255, 255, 255, 0.7),
      inset 20px 20px 50px rgba(0, 0, 0, 1);
  }
  .test-container{
    height: calc(100vh - 50px);
    padding: 50px;
    background-image: radial-gradient(
      circle farthest-corner at 10% 20%,
      rgba(130, 205, 221, 1) 0%,
      rgba(255, 247, 153, 1) 90%
    );
  }
</style>
