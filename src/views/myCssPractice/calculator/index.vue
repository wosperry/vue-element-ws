<template>
      <div class="main">
             <div class="calculator">
        <div class="result" style="grid-area: result">
            {{equation}}
        </div>
        <button style="grid-area: ac;" @click="clear">AC</button>
        <button style="grid-area: plus-minus" @click="calculateToggle">±</button>
        <button style="grid-area: percent" @click="calculatePercentage">%</button>
        <button style="grid-area: plus" @click="append('+')">+</button>
        <button style="grid-area: minus" @click="append('-')">-</button>
        <button style="grid-area: multi" @click="append('×')">×</button>
        <button style="grid-area: divide" @click="append('÷')">÷</button>
        <button style="grid-area: equal" @click="calculate">=</button>
        <button style="grid-area: n-0" @click="append(0)">0</button>
        <button style="grid-area: n-1" @click="append(1)">1</button>
        <button style="grid-area: n-2" @click="append(2)">2</button>
        <button style="grid-area: n-3" @click="append(3)">3</button>
        <button style="grid-area: n-4" @click="append(4)">4</button>
        <button style="grid-area: n-5" @click="append(5)">5</button>
        <button style="grid-area: n-6" @click="append(6)">6</button>
        <button style="grid-area: n-7" @click="append(7)">7</button>
        <button style="grid-area: n-8" @click="append(8)">8</button>
        <button style="grid-area: n-9" @click="append(9)">9</button>
        <button style="grid-area: dot" @click="append('.')">·</button>
    </div>
      </div>
</template>
<script>
  export default{
    data(){
      return {
                        equation: '0',
                isDecimalAdded: false,
                isOperatorAdded: false,
                isStarted: false,
                isCalculated: false
      }
    },
    methods:{
                     isOperator(character) {
                    return ['+', '-', '×', '÷'].indexOf(character) > -1
                },
                append(character) {
                    if (this.equation === '0' && !this.isOperator(character)) {
                        if (character === '.') {
                            this.equation += '' + character
                            this.isDecimalAdded = true
                        } else {
                            this.equation = '' + character
                        }
                        this.isStarted = true
                        return
                    }
                    // Number
                    if (!this.isOperator(character)) {
                        if (character === '.') {
                            if (this.isDecimalAdded) {
                                return
                            }
                            this.isDecimalAdded = true
                            this.isOperatorAdded = true


                        } else {
                            this.isOperatorAdded = false
                        }

                        this.equation += '' + character
                    }

                    // if operator
                    if (this.isOperator(character) && !this.isOperatorAdded) {
                        this.equation += '' + character
                        this.isDecimalAdded = false
                        this.isOperatorAdded = true
                    }
                },
                calculate(character) {
                    let result = this.equation.replace(new RegExp('×', 'g'), '*').replace(new RegExp('÷', 'g'), '/')
                    this.equation = parseFloat(eval(result).toFixed(9)).toString()

                    this.isDecimalAdded = false
                    this.isOperatorAdded = false
                    this.isCalculated = true
                },
                calculateToggle(character) {
                    if (this.isOperatorAdded || !this.isStarted) {
                        return
                    }
                    this.equation = '(' + this.equation + ')* -1'
                    this.calculate()
                },
                calculatePercentage() {
                    console.log(this.equation)
                    if (this.isOperatorAdded || !this.isStarted) {
                        return
                    }
                    this.equation = '(' + this.equation + ')* 0.01'
                    this.calculate()
                },
                clear() {
                    this.equation = '0'
                    this.isDecimalAdded = false
                    this.isOperatorAdded = false
                    this.isStarted = false
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
        min-height: 100vh;
        background-color: #eeeeee;
    }

 
    .calculator {
        --button-width: 80px;
        --button-height: 80px;
        padding: 20px;
        display: grid;
        grid-template-areas: "result result result result" "ac plus-minus percent divide" "n-7 n-8 n-9 multi" "n-4 n-5 n-6 minus" "n-1 n-2 n-3 plus" "n-0 n-0 dot equal";
        grid-template-columns: repeat(4, var(--button-width));
        grid-template-rows: repeat(6, var(--button-height));
        border-radius: 30px;
        box-shadow: -8px -8px 16px -10px rgba(255, 255, 255, 1), 8px 8px 16px -10px rgba(0, 0, 0, .25);
    }
    
    .calculator button {
        outline: none;
        margin: 4px;
        border: 0;
        border-radius: 25px 0px;
        font-size: 24px;
        font-family: Helvetica;
        font-weight: normal;
        display: block;
        color: #999;
        background-image: linear-gradient(135deg, rgba(230, 230, 230, 1) 20%, rgba(246, 246, 246, 1) 90%);
        box-shadow: -4px -2px 10px -8px rgba(255, 255, 255, 1), 4px 2px 10px -8px rgba(0, 0, 0, 0.3);
    }
    
    .calculator button:hover {
        box-shadow: -4px -2px 10px -8px rgba(255, 255, 255, 1), 4px 2px 10px -8px rgba(0, 0, 0, 0.6);
    }
    
    .calculator button:active {
        box-shadow: -4px -2px 10px -8px rgba(255, 255, 255, 1) inset, 4px 2px 10px -8px rgba(0, 0, 0, .5) inset;
    }
    
    .result {
        font-family: Helvetica;
        font-size: 48px;
        font-weight: normal;
        color: #999;
        line-height: var(--button-height);
        text-align: right;
        padding: 0 10px;
    }
</style>
