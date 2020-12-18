<template>
      <div class="main">
          <div class="my-button">
              <div  :class="buttonClass" @click="handleButtonClick"></div>
          </div>
      </div>
</template>
<script>
  export default{
    data(){
      return {
        stat: false,
        buttonClass:"my-button-item",
      }
    },
    methods:{
      handleButtonClick(){
        console.log("before:",this.stat,this.buttonClass);
        if(this.stat){
          this.buttonClass = "my-button-item my-button-off"
        }
        else{
          this.buttonClass = "my-button-item my-button-on"
        }
        this.stat = !this.stat;
        console.log("after:",this.stat,this.buttonClass);
      }
    }
  }
</script>
<style scoped lang="scss">
 .main{
        width: 100%;
        height: calc(100vh - 50px);
        display: flex;
        justify-content: center;
        align-items: center;
    }

.my-button{
      width: 100px;
      height: 30px;
      border-radius: 15px;
      background-color: lightgray;
      cursor: pointer;
  }

  .my-button-item{
      width: 40px;
      height: 20px;
      border-radius: 10px;
      margin: 5px;
      background-color: gray;
      position: relative; left: 0;
        background-color: #2F2D3D;
  }

.my-button-on{
      animation: moveforword 0.5s ease-out 0s forwards;
}

.my-button-off{
      animation: movebackword 0.5s ease-out 0s forwards;
}

  @keyframes moveforword {
    0%{
          left:0;
          width: 40px;
          background-color: #2F2D3D;
    }
      50%{
          left: 0;
          width: 90px;
          background-color: #2F2D3D;
      }
      100%{
          left: 50px;
          width: 40px;
          background-color: rgb(100, 252, 100);
      }
  }
  @keyframes movebackword {

    0%{
        left: 50px;
        width: 40px;
        background-color: rgb(100, 252, 100);
    }
      50%{
          left: 0;
          width: 90px;
          background-color: rgb(100, 252, 100);
      }
    100%{
      left:0;
      width: 40px;
          background-color: #2F2D3D;
    }
  }
</style>
