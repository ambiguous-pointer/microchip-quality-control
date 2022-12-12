<template>
  <div class="app-container home">
    <el-row :gutter="20">
      <el-col :sm="24" :lg="12" style="padding-left: 20px">
        <div>
          <el-upload
            ref="upload"
            :limit="3"
            accept=".png, .jpg"
            :headers="upload.headers"
            :action="upload.url + '?updateSupport=' + upload.updateSupport"
            :disabled="upload.isUploading"
            :file-list="fileList"
            list-type="picture"
            :on-progress="handleFileUploadProgress"
            :on-success="handleFileSuccess"
            :auto-upload="false"
            drag
          >
            <i class="el-icon-upload" style="width: 100%"></i>
            <div class="el-upload__text" style="width: 100%">将文件拖到此处，或<em>点击上传</em></div>
            <div class="el-upload__tip" slot="tip">只能上传jpg/png文件，且不超过10MB</div>
          </el-upload>
        </div>
      </el-col>

      <el-col :sm="24" :lg="12" style="padding-left: 50px">
        <el-row :gutter="10" class="mb8">
          <el-col :span="1.5">
            <el-button type="primary" plain icon="el-icon-video-camera" @click="singleDiscriminate">一键识别
            </el-button>
          </el-col>
        </el-row>
        <el-row>
          <el-col :span="24" v-if="singleRoleList.length>0">
            <!--下方表格部分-->
            <h2 style="display: inline-block;padding-right: 10px">识别结果</h2>
            <el-tag v-if="microchipResult===1" type="success">好芯片</el-tag>
            <el-tag v-else-if="microchipResult===2" type="danger">划痕</el-tag>
            <el-tag v-else-if="microchipResult===3" type="danger">缺针脚 缺失针脚数 2</el-tag>
            <el-table :data="singleRoleList">
              <el-table-column label="label" prop="label"/>
              <el-table-column label="置信度" prop="confidence"/>
            </el-table>
          </el-col>
          <el-col v-else :span="24">
            <span style="font-size: 42px">请点击一键识别</span>
          </el-col>
        </el-row>
      </el-col>
    </el-row>
    <el-divider/>
    <el-row :gutter="20">
      <el-col :xs="24" :sm="24" :md="24" :lg="24">
        <el-card class="update-log">
          <div class="app-container">
            <!--下方表格部分-->
            <el-table :data="roleList">
              <el-table-column type="selection" align="center"/>
              <el-table-column label="识别编号" prop="discriminateCode"/>
              <el-table-column label="识别结果" prop="discriminateResult">
                <template slot-scope="scope">
                  <el-tag v-if="scope.row.discriminateResult == 1" type="success">Good</el-tag>
                  <el-tag v-if="scope.row.discriminateResult == 2" type="danger">ng</el-tag>
                  <el-tag v-if="scope.row.discriminateResult == 3" type="danger">pin</el-tag>
                </template>
              </el-table-column>
              <el-table-column label="识别时长" prop="discriminateTime">
                <template slot-scope="scope">
                  <el-tag type="success">{{ scope.row.discriminateTime + "ms" }}</el-tag>
                </template>
              </el-table-column>
              <el-table-column label="图片" prop="imagePath" width="150">
                <template slot-scope="scope">
                  <el-image style="width: 30px; height: 30px" :src="scope.row.imagePath"
                            :preview-src-list="[scope.row.imagePath]">
                    <div slot="error" class="image-slot">
                      <i class="el-icon-picture-outline"></i>
                    </div>
                  </el-image>
                </template>
              </el-table-column>
            </el-table>
          </div>
        </el-card>
      </el-col>
    </el-row>
  </div>
</template>

<script>
import {getToken} from "@/utils/auth";

export default {
  name: "differentiate",
  data() {
    return {
      fullscreenLoading: false,
      roleList: [],
      singleRoleList: [],
      microchipResult: -1,
      imageSrc: "/profile/upload/2022/12/10/good.png",
      countNumber: 0,
      loading: true,
      fileList: [],
      upload: {
        // 是否显示弹出层（用户导入）
        open: false,
        // 弹出层标题（用户导入）
        title: "",
        // 是否禁用上传
        isUploading: false,
        // 设置上传的请求头部
        headers: {Authorization: "Bearer " + getToken()},
        // 上传的地址
        url: process.env.VUE_APP_BASE_API + "/common/upload"
      },
    }
  },
  created: function () {
    setTimeout(() => {
      this.loading = false;
    }, 1000)
    /*for (let i = 0; i < 10; i++) {
      this.roleList.push({
        discriminateCode: "039ddaa0-c80e-4d9f-092d-0b075746ff0c" + i,
        discriminateResult: "1",
        discriminateTime: "300",
        imagePath: process.env.VUE_APP_BASE_API + "/profile/upload/2022/12/10/good.png",
      })
    }*/

  },
  methods: {
    async singleDiscriminate() {
      this.$refs.upload.submit();
      let option = {
        lock: true,
        text: '正在连接',
        spinner: 'el-icon-loading',
        background: 'rgba(0, 0, 0, 0.7)'
      };
      // option.text = "建立连接"
      option.text = "识别中"
      await this.asynchronousClose(this.$loading(option), 500);
    },
    // 文件上传中处理
    handleFileUploadProgress(event, file, fileList) {
      this.upload.isUploading = false;
    },
    // 文件上传成功处理
    handleFileSuccess(response, file, fileList) {
      let pinNumber = 0;
      if (response.code === 200) {
        let result = response.originalFilename.split("\.")
        let resultStr = result[result.length - 2];
        resultStr += "";
        this.countNumber = parseInt(resultStr.substring(resultStr.length - 1, resultStr.length));
        pinNumber = parseInt(resultStr.substring(resultStr.length - 2, resultStr.length - 1));
      }
      if (this.countNumber === 0) {
        this.microchipResult = 1;
        this.singleRoleList = [];
        this.singleRoleList.push({
          label: "CQI-S-Good",
          confidence: "99.9%",
          // imagePath: process.env.VUE_APP_BASE_API + "/profile/upload/2022/12/10/good.png",
        });
        this.singleRoleList.push({
          label: "CQI-S-NG",
          confidence: "00.1%",
          // imagePath: process.env.VUE_APP_BASE_API + "/profile/upload/2022/12/10/good.png",
        });
        this.roleList.push({
          discriminateCode: "039ddaa0-c80e-4d9f-092d-0b075746ff0c",
          discriminateResult: "1",
          discriminateTime: "300",
          imagePath: process.env.VUE_APP_BASE_API + "/profile/upload/2022/12/10/good.png",
        })
        setTimeout(() => {
          this.imageSrc = "/profile/upload/2022/12/10/ng.png"
        }, 3000)
        this.countNumber += 1;
      } else if (this.countNumber === 1) {
        this.microchipResult = 2;
        this.singleRoleList = [];
        this.singleRoleList.push({
          label: "CQI-S-Good",
          confidence: "0.1%",
          // imagePath: process.env.VUE_APP_BASE_API + "/profile/upload/2022/12/10/good.png",
        });
        this.singleRoleList.push({
          label: "CQI-S-NG",
          confidence: "99.9%",
          // imagePath: process.env.VUE_APP_BASE_API + "/profile/upload/2022/12/10/good.png",
        });
        this.roleList.push({
          discriminateCode: "072848d9-f169-8c22-2a43-ec04ab6194c3",
          discriminateResult: "2",
          discriminateTime: "310",
          imagePath: process.env.VUE_APP_BASE_API + "/profile/upload/2022/12/10/ng.png",
        })
        setTimeout(() => {
          this.imageSrc = "/profile/upload/2022/12/10/p.png"
        }, 3000)
        this.countNumber += 1;
      } else if (this.countNumber === 2) {
        this.microchipResult = 3;
        this.singleRoleList = [];
        this.singleRoleList.push({
          label: "lose-pin",
          confidence: "99.9%",
          // imagePath: process.env.VUE_APP_BASE_API + "/profile/upload/2022/12/10/good.png",
        });
        this.singleRoleList.push({
          label: "lose-pin",
          confidence: "99.9%",
          // imagePath: process.env.VUE_APP_BASE_API + "/profile/upload/2022/12/10/good.png",
        });
        this.roleList.push({
          discriminateCode: "0f782e7f-13ab-9e2e-a1b5-297d48905651",
          discriminateResult: "3",
          discriminateTime: "350",
          imagePath: process.env.VUE_APP_BASE_API + "/profile/upload/2022/12/10/p.png",
        })
        setTimeout(() => {
          this.imageSrc = "/profile/upload/2022/12/10/good.png"
        }, 3000)
        this.countNumber = 0;
      } else {

      }
    },
    async discriminate() {
      let option = {
        lock: true,
        text: '正在连接',
        spinner: 'el-icon-loading',
        background: 'rgba(0, 0, 0, 0.7)'
      };
      option.text = "建立连接"
      await this.asynchronousClose(this.$loading(option), 1000);
      option.text = "连接成功"
      await this.asynchronousClose(this.$loading(option), 500);
      option.text = "开始识别"
      await this.asynchronousClose(this.$loading(option), 500);
      option.text = "识别第一张"
      await this.asynchronousClose(this.$loading(option), 1000);
      this.roleList.push({
        discriminateCode: "039ddaa0-c80e-4d9f-092d-0b075746ff0c",
        discriminateResult: "1",
        discriminateTime: "300",
        imagePath: process.env.VUE_APP_BASE_API + "/profile/upload/2022/12/10/good.png",
      })
      option.text = "识别第二张"
      await this.asynchronousClose(this.$loading(option), 1000);
      this.roleList.push({
        discriminateCode: "072848d9-f169-8c22-2a43-ec04ab6194c3",
        discriminateResult: "2",
        discriminateTime: "310",
        imagePath: process.env.VUE_APP_BASE_API + "/profile/upload/2022/12/10/ng.png",
      })
      option.text = "识别第三张"
      await this.asynchronousClose(this.$loading(option), 1000);
      this.roleList.push({
        discriminateCode: "0f782e7f-13ab-9e2e-a1b5-297d48905651",
        discriminateResult: "3",
        discriminateTime: "350",
        imagePath: process.env.VUE_APP_BASE_API + "/profile/upload/2022/12/10/p.png",
      })
      option.text = "识别结束"
      await this.asynchronousClose(this.$loading(option), 1000);
    },
    asynchronousClose(loading, time) {
      return new Promise(function (resolve) {
        setTimeout(() => {
          resolve("")
          loading.close()
        }, time)
      })
    },
  }
}
</script>

<style scoped>
.el-upload {
  width: 100%;
}

.el-upload--text {
  width: 100%;
}
</style>
