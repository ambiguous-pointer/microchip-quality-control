<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="流水线名" prop="assemblyLineId">
        <el-input
          v-model="queryParams.assemblyLineId"
          placeholder="请输入流水线名"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="采样时间" prop="samplingTime">
        <el-date-picker clearable
                        v-model="queryParams.samplingTime"
                        type="date"
                        value-format="yyyy-MM-dd"
                        placeholder="请选择采样时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="识别时间" prop="distinguishTime">
        <el-date-picker clearable
                        v-model="queryParams.distinguishTime"
                        type="date"
                        value-format="yyyy-MM-dd"
                        placeholder="请选择识别时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="引角结果" prop="pingResult">
        <el-input
          v-model="queryParams.pingResult"
          placeholder="请输入引角结果"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="划痕及结果" prop="classifyResult">
        <el-input
          v-model="queryParams.classifyResult"
          placeholder="请输入划痕及结果"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="图片数据地址" prop="imagepath">
        <el-input
          v-model="queryParams.imagepath"
          placeholder="请输入图片数据地址"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['system:quality:add']"
        >新增
        </el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['system:quality:edit']"
        >修改
        </el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['system:quality:remove']"
        >删除
        </el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['system:quality:export']"
        >导出
        </el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="qualityList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center"/>
      <el-table-column label="识别编号" align="center" prop="id"/>
      <el-table-column label="流水线名" align="center" prop="assemblyLine.aLName"/>
      <el-table-column label="采样时间" align="center" prop="samplingTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.samplingTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="识别时间" align="center" prop="distinguishTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.distinguishTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="引角结果" align="center" prop="pingResult">
        <template slot-scope="scope">
          <el-tag v-if="scope.row.pingResult == 1" type="success">成功</el-tag>
          <el-tag v-if="scope.row.pingResult == 2" type="danger">失败</el-tag>
        </template>
      </el-table-column>
      <el-table-column label="划痕及结果" align="center" prop="classifyResult">
        <template slot-scope="scope">
          <el-tag v-if="scope.row.classifyResult == 1" type="success">成功</el-tag>
          <el-tag v-if="scope.row.classifyResult == 2" type="danger">失败</el-tag>
        </template>
      </el-table-column>
      <el-table-column label="芯片图片" align="center" prop="imagepath">
        <template slot-scope="scope">
          <el-image style="width: 30px; height: 30px" :src="scope.row.imagepath"
                    :preview-src-list="[scope.row.imagepath]">
            <div slot="error" class="image-slot">
              <i class="el-icon-picture-outline"></i>
            </div>
          </el-image>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['system:quality:edit']"
          >修改
          </el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['system:quality:remove']"
          >删除
          </el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改检查对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="流水线id" prop="assemblyLineId">
          <el-input v-model="form.assemblyLineId" placeholder="请输入流水线id"/>
        </el-form-item>
        <el-form-item label="采样时间" prop="samplingTime">
          <el-date-picker clearable
                          v-model="form.samplingTime"
                          type="date"
                          value-format="yyyy-MM-dd"
                          placeholder="请选择采样时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="识别时间" prop="distinguishTime">
          <el-date-picker clearable
                          v-model="form.distinguishTime"
                          type="date"
                          value-format="yyyy-MM-dd"
                          placeholder="请选择识别时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="引角结果" prop="pingResult">
          <el-input v-model="form.pingResult" placeholder="请输入引角结果"/>
        </el-form-item>
        <el-form-item label="划痕及结果" prop="classifyResult">
          <el-input v-model="form.classifyResult" placeholder="请输入划痕及结果"/>
        </el-form-item>
        <el-form-item label="图片数据地址" prop="imagepath">
          <el-input v-model="form.imagepath" placeholder="请输入图片数据地址"/>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import {listQuality, getQuality, delQuality, addQuality, updateQuality} from "@/api/system/quality";

export default {
  name: "Quality",
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 检查表格数据
      qualityList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        assemblyLineId: null,
        samplingTime: null,
        distinguishTime: null,
        pingResult: null,
        classifyResult: null,
        imagepath: null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {}
    };
  },
  created() {
    this.getList();

  },
  methods: {
    /** 查询检查列表 */
    getList() {
      this.loading = true;
      listQuality(this.queryParams).then(response => {
        this.qualityList = response.rows;
        this.qualityList.map((value, index, array) => {
          value.imagepath = process.env.VUE_APP_BASE_API + value.imagepath;
          return value;
        })
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        id: null,
        assemblyLineId: null,
        samplingTime: null,
        distinguishTime: null,
        pingResult: null,
        classifyResult: null,
        imagepath: null
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.id)
      this.single = selection.length !== 1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加检查";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getQuality(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改检查";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateQuality(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addQuality(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const ids = row.id || this.ids;
      this.$modal.confirm('是否确认删除检查编号为"' + ids + '"的数据项？').then(function () {
        return delQuality(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {
      });
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('system/quality/export', {
        ...this.queryParams
      }, `quality_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
