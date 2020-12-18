<template>
<div class="main">
    <div class="container">
        <div class="box"> 
            <div class="inside inside-ab"><h1>hahahaha</h1></div>
            <div class="inside inside-a">flex-direction: column;</div>
            <div class="inside inside-ab inside-move">并给出了解决方案</div> 
            <div class="inside inside-ab inside-move">article/details/88683918</div> 
            <div class="inside inside-b inside-move">Sliver earring 1micron rose gold</div> 
        </div> 
        <div class="box"> 
            <div class="inside inside-ab"><h1>hahahaha</h1></div>
            <div class="inside inside-a">flex-direction: column;</div>
            <div class="inside inside-ab inside-move">并给出了解决方案</div> 
            <div class="inside inside-ab inside-move">article/details/88683918</div> 
            <div class="inside inside-b inside-move">Sliver earring 1micron rose gold</div> 
        </div> 
        <div class="box"> 
            <div class="inside inside-ab"><h1>hahahaha</h1></div>
            <div class="inside inside-a">flex-direction: column;</div>
            <div class="inside inside-ab inside-move">并给出了解决方案</div> 
            <div class="inside inside-ab inside-move">article/details/88683918</div> 
            <div class="inside inside-b inside-move">Sliver earring 1micron rose gold</div> 
        </div> 
        <div class="box"> 
            <div class="inside inside-ab"><h1>hahahaha</h1></div>
            <div class="inside inside-a">flex-direction: column;</div>
            <div class="inside inside-ab inside-move">并给出了解决方案</div> 
            <div class="inside inside-ab inside-move">article/details/88683918</div> 
            <div class="inside inside-b inside-move">Sliver earring 1micron rose gold</div> 
        </div> 
        <div class="box"> 
            <div class="inside inside-ab"><h1>hahahaha</h1></div>
            <div class="inside inside-a">flex-direction: column;</div>
            <div class="inside inside-ab inside-move">并给出了解决方案</div> 
            <div class="inside inside-ab inside-move">article/details/88683918</div> 
            <div class="inside inside-b inside-move">Sliver earring 1micron rose gold</div> 
        </div> 
        <div class="box"> 
            <div class="inside inside-ab"><h1>hahahaha</h1></div>
            <div class="inside inside-a">flex-direction: column;</div>
            <div class="inside inside-ab inside-move">并给出了解决方案</div> 
            <div class="inside inside-ab inside-move">article/details/88683918</div> 
            <div class="inside inside-b inside-move">Sliver earring 1micron rose gold</div> 
        </div> 
        <div class="box"> 
            <div class="inside inside-ab"><h1>hahahaha</h1></div>
            <div class="inside inside-a">flex-direction: column;</div>
            <div class="inside inside-ab inside-move">并给出了解决方案</div> 
            <div class="inside inside-ab inside-move">article/details/88683918</div> 
            <div class="inside inside-b inside-move">Sliver earring 1micron rose gold</div> 
        </div> 
        <div class="box"> 
            <div class="inside inside-ab"><h1>hahahaha</h1></div>
            <div class="inside inside-a">flex-direction: column;</div>
            <div class="inside inside-ab inside-move">并给出了解决方案</div> 
            <div class="inside inside-ab inside-move">article/details/88683918</div> 
            <div class="inside inside-b inside-move">Sliver earring 1micron rose gold</div> 
        </div> 
    </div>
</div>
</template>

<script>
</script>

<style lang="scss" scoped>
.main {
    width: 100%;
    height: calc(100vh - 50px);
    display: flex;
    justify-content: center;
    align-items: center;
    background-image: linear-gradient( 114.2deg,  rgba(121,194,243,1) 22.6%, rgba(255,180,239,1) 67.7% );
    .container {
        width: 1000px;
        height: 600px;
        display: flex;
        justify-content: flex-start;
        align-items: flex-start;
        flex-wrap: wrap;
        cursor:default;
        .box {
            width: 300px;
            height: 200px;  
            margin: 10px;
            border-radius: 10px;
            transition: .6s;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            .inside-a{
                opacity: 1;
            }
            .inside-b{
                opacity: 0;
            }
            .inside{
                transition:.4s;
            }
        }
        .box:hover{
            transform: translateY(-6px); 
            box-shadow: 0px 8px 16px #999;
            .inside-a{
                opacity: 0;
            }
            .inside-b{
                opacity: 1;
            }
            .inside-move{
                transform:translateY(-30px);
                margin-top: 5px;
            }
        }
    }
}
</style>
