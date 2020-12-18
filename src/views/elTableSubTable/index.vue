<template>
<div class="test-container">
    <el-table :data="tableData" style="width: 100%" header-cell-class-name="outer-header" cell-class-name="outer-cell">
        <el-table-column type="expand">
            <template slot-scope="props">
                <el-table border :show-header="true" :data="props.row.children" header-cell-class-name="inner-header" cell-class-name="inner-cell">
                    <el-table-column type="selection"></el-table-column>
                    <el-table-column type="index"></el-table-column>
                    <el-table-column label="ID" prop="id" width="150"> </el-table-column>
                    <el-table-column label="ID" prop="id" width="150"> </el-table-column>
                    <el-table-column label="Code" prop="code" width="150"> </el-table-column>
                    <el-table-column label="Name" prop="name" width="150"> </el-table-column>
                </el-table>
            </template>
        </el-table-column>
        <el-table-column type="selection"></el-table-column>
        <el-table-column type="index"></el-table-column>
        <el-table-column prop="date" label="日期" width="150">
        </el-table-column>
        <el-table-column label="配送信息">
            <el-table-column prop="name" label="姓名" width="120">
            </el-table-column>
            <el-table-column label="地址">
                <el-table-column prop="province" label="省份" width="120">
                </el-table-column>
                <el-table-column prop="city" label="市区" width="120">
                </el-table-column>
                <el-table-column prop="address" label="地址" width="300">
                </el-table-column>
                <el-table-column prop="zip" label="邮编" width="120">
                </el-table-column>
            </el-table-column>
        </el-table-column>
    </el-table>
</div>
</template>

<script>
export default {
    data() {
        return {
            tableData: [{
                date: '2016-05-03',
                name: '王小虎',
                province: '上海',
                city: '普陀区',
                address: '上海市普陀区金沙江路 1518 弄',
                zip: 200333,
                children: [{
                    id: 1,
                    code: "ha01",
                    name: "哈哈"
                }, {
                    id: 2,
                    code: "ha01",
                    name: "哈哈"
                }]
            }, {
                date: '2016-05-02',
                name: '王小虎',
                province: '上海',
                city: '普陀区',
                address: '上海市普陀区金沙江路 1518 弄',
                zip: 200333,
                children: [{
                    id: 2,
                    code: "ha01",
                    name: "哈哈"
                }]
            }, {
                date: '2016-05-04',
                name: '王小虎',
                province: '上海',
                city: '普陀区',
                address: '上海市普陀区金沙江路 1518 弄',
                zip: 200333,
                children: [{
                    id: 3,
                    code: "ha01",
                    name: "哈哈"
                }, {
                    id: 4,
                    code: "ha01",
                    name: "哈哈"
                }, {
                    id: 5,
                    code: "ha01",
                    name: "哈哈"
                }]
            }, {
                date: '2016-05-01',
                name: '王小虎',
                province: '上海',
                city: '普陀区',
                address: '上海市普陀区金沙江路 1518 弄',
                zip: 200333,
                children: [{
                    id: 4,
                    code: "ha01",
                    name: "哈哈"
                }]
            }, {
                date: '2016-05-08',
                name: '王小虎',
                province: '上海',
                city: '普陀区',
                address: '上海市普陀区金沙江路 1518 弄',
                zip: 200333,
                children: [{
                    id: 5,
                    code: "ha01",
                    name: "哈哈"
                }]
            }, {
                date: '2016-05-06',
                name: '王小虎',
                province: '上海',
                city: '普陀区',
                address: '上海市普陀区金沙江路 1518 弄',
                zip: 200333,
                children: [{
                    id: 6,
                    code: "ha01",
                    name: "哈哈"
                }]
            }, {
                date: '2016-05-07',
                name: '王小虎',
                province: '上海',
                city: '普陀区',
                address: '上海市普陀区金沙江路 1518 弄',
                zip: 200333,
                children: [{
                    id: 7,
                    code: "ha01",
                    name: "哈哈"
                }]
            }]
        }
    }
}
</script>

<style lang="scss">
.outer-header {

    background-color: rgb(122, 202, 236) !important;
}

.outer-cell {
    background-color: rgb(195, 225, 238);
}

.inner-header {
    background-color: rgb(73, 168, 86) !important;
    color: #eee;
}

.inner-cell {
    background-color: rgb(159, 184, 163) !important;
    color: #eee;
}
</style>
