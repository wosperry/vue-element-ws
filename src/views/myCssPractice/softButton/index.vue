<template>
<div class="container">
    <div class="box">
        <div class="btn"></div>
    </div>
</div>
</template>

<style lang="scss" scoped>
.container {
    width: 100%;
    height: 500px;
    display: flex;
    justify-content: center;
    justify-items: center;
    align-items: center;
}

.container .box .btn {
    display: flex;
    justify-content: center;
    justify-items: center;
    width: 100px;
    height: 100px;
    transition: all 0.3s ease-out;
    border-radius: 30px;
    box-shadow: 20px 20px 60px rgba(0, 0, 0, 0.3),
        inset 20px 20px 40px rgba(255, 255, 255, 0.3),
        inset -20px -20px 40px rgba(0, 0, 0, 0.3);
}

.container .box .btn:hover {
    box-shadow: 10px 10px 30px rgba(0, 0, 0, 0.3),
        inset 15px 15px 20px rgba(255, 255, 255, 0.3),
        inset -15px -15px 20px rgba(0, 0, 0, 0.3);
}
</style>
