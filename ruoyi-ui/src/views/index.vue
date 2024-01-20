<!--<template>-->
<!--  <div class="main">-->
<!--    <div class="app_lizi">-->
<!--      <vue-particles-->
<!--        color="#2F2C2B"-->
<!--        :particleOpacity="0.7"-->
<!--        :particlesNumber="100"-->
<!--        shapeType="star"-->
<!--        :particleSize="4"-->
<!--        linesColor="#858585"-->
<!--        :linesWidth="1"-->
<!--        :lineLinked="true"-->
<!--        :lineOpacity="0.4"-->
<!--        :linesDistance="150"-->
<!--        :moveSpeed="2"-->
<!--        :hoverEffect="true"-->
<!--        hoverMode="grab"-->
<!--        :clickEffect="true"-->
<!--        clickMode="push"-->
<!--        class="lizi">-->
<!--      </vue-particles>-->
<!--      <div class="txt">-->
<!--        欢迎来到后台首页-->
<!--      </div>-->
<!--      <div class="txtl">-->
<!--        color: #20dbfd;-->
<!--        text-shadow: 0 0 25px #00d8ff;-->
<!--        font-size: calc(100vw * 28 / 1920);-->
<!--        font-family: 'yjsz';-->
<!--        text-align: center;-->
<!--      </div>-->
<!--      <div class="txtr">-->
<!--        欢迎来到后台首页-->
<!--        color: #20dbfd;-->
<!--        text-shadow: 0 0 25px #00d8ff;-->
<!--        font-size: calc(100vw * 28 / 1920);-->
<!--        font-family: 'yjsz';-->
<!--        text-align: center;-->
<!--      </div>-->
<!--    </div>-->
<!--  </div>-->
<!--</template>-->
<!--<script>-->
<!--    export default {-->
<!--        name: 'frist',-->
<!--        data () {-->
<!--            return {-->

<!--            }-->
<!--        }-->
<!--    }-->
<!--</script>-->
<!--<style scope lang="scss">-->
<!--  .main{-->
<!--    height: 100%;-->
<!--    width: 100%;-->
<!--    background-color: #fff;-->
<!--    background-image: none;-->
<!--    position: relative;-->
<!--  }-->
<!--  .app_lizi{-->
<!--    position: absolute;-->
<!--    left: 0;-->
<!--    top: 0;-->
<!--    bottom: 0;-->
<!--    right: 0;-->
<!--    z-index: 999;-->
<!--  }-->
<!--  .lizi{-->
<!--    height: 100%;-->
<!--    width: 100%;-->
<!--  }-->
<!--  .txt{-->
<!--    height: 500px;-->
<!--    width: 900px;-->
<!--    position: absolute;-->
<!--    top: 80px;-->
<!--    left: 230px;-->
<!--    color: #20dbfd;-->
<!--    text-shadow: 0 0 35px #48ddf7;-->
<!--    font-size: calc(100vw * 120 / 1920);-->
<!--    font-family: 'yjsz';-->
<!--    text-align: center;-->
<!--  }-->
<!--  .txtl{-->
<!--    height: 400px;-->
<!--    width: 400px;-->
<!--    position: absolute;-->
<!--    top: 380px;-->
<!--    left: 230px;-->
<!--    color: #20dbfd;-->
<!--    font-size: calc(100vw * 30 / 1920);-->
<!--    font-family: 'yjsz';-->
<!--    text-align: center;-->
<!--    line-height: 30px;-->
<!--  }-->
<!--  .txtr{-->
<!--    height: 400px;-->
<!--    width: 400px;-->
<!--    position: absolute;-->
<!--    top: 380px;-->
<!--    left: 730px;-->
<!--    color: #20dbfd;-->
<!--    font-size: calc(100vw * 30 / 1920);-->
<!--    font-family: 'yjsz';-->
<!--    text-align: center;-->
<!--    line-height: 30px;-->
<!--  }-->
<!--</style>-->
<template>
  <div class="app-container home">
    <el-row :gutter="20">
      <el-col :sm="24" :lg="12" style="padding-left: 20px">
        <h2>请假审批系统</h2>
        <p>
          请假审批系统是我们组的的数据库答辩项目，此系统中拥有完善权限管理功能以及完整请假-审批-销假的请假流。使用此系统的用户分为多种角色：学生、教职工、辅导员、班主任等角色，
          不同的角色用户不同的权限，一名用户可拥有多个角色，每个角色可拥有多种权限，综合用户所拥有的所有角色下的所有权限就是用户所拥有的权限。用户需要发起请假申请，需要角色以上的角色进行审批，需要用户
          本人销假才算完成了一次完整的请假流。系统中还有许多相关的模块功能：学院信息管理模块、职称信息管理模块、用户信息管理模块、字典信息管理模块、系统监控模块（其中包括在线用户监控，缓存监控、数据监控等）、
          日志管理模块（包括操作日志和登录日志）等
        </p>
        <p>
          <b>当前版本:</b> <span>v{{ version }}</span>
        </p>
        <p>
          <el-button
            type="primary"
            size="mini"
            icon="el-icon-cloudy"
            plain
            @click="goTarget('https://gitee.com/ajshow/demo-warehouse')"
            >访问码云</el-button
          >
        </p>
      </el-col>

      <el-col :sm="24" :lg="12" style="padding-left: 50px">
        <el-row>
          <el-col :span="12">
            <h2>技术选型</h2>
          </el-col>
        </el-row>
        <el-row>
          <el-col :span="6">
            <h4>后端技术</h4>
            <ul>
              <li>SpringBoot</li>
              <li>Spring Security</li>
              <li>JWT</li>
              <li>MyBatis</li>
              <li>Druid</li>
              <li>Fastjson</li>
              <li>...</li>
            </ul>
          </el-col>
          <el-col :span="6">
            <h4>前端技术</h4>
            <ul>
              <li>Vue</li>
              <li>Vuex</li>
              <li>Element-ui</li>
              <li>Axios</li>
              <li>Sass</li>
              <li>Quill</li>
              <li>...</li>
            </ul>
          </el-col>
          <el-col :span="6">
            <h4>数据库</h4>
            <ul>
              <li>MySQL</li>
              <li>Redis</li>
            </ul>
          </el-col>
        </el-row>
      </el-col>
    </el-row>
    <el-divider />
    <el-row :gutter="20">
      <el-col :xs="24" :sm="24" :md="12" :lg="8">
        <el-card class="update-log">
          <div slot="header" class="clearfix">
            <span>联系信息</span>
          </div>
          <div class="body">
            <p>
              <i class="el-icon-s-promotion"></i> 个人博客：<el-link
                href="https://weibo.com"
                target="_blank"
                >http://blog.weibo.cn</el-link
              >
            </p>
            <p>
              <i class="el-icon-chat-dot-round"></i> 微信：<a
                href="javascript:;"
                >AJshow</a
              >
            </p>
            <p>
              <i class="el-icon-money"></i> 手机：<a
                href="javascript:;"
                class="手机号码"
                >12345678910</a
              >
            </p>
          </div>
        </el-card>
      </el-col>
      <el-col :xs="24" :sm="24" :md="12" :lg="8">
        <el-card class="update-log">
          <div slot="header" class="clearfix">
            <span>更新日志</span>
          </div>
          <el-collapse accordion>
            <el-collapse-item title="v1.0.0 - 2022-05-22">
              <ol>
                <li>请假审批系统初步完成，待优化...</li>
              </ol>
            </el-collapse-item>
            <el-collapse-item title="v1.0.1 - 2022-05-25">
              <ol>
                <li>请假审批系统测试完毕，部署上线</li>
              </ol>
            </el-collapse-item>
            <el-collapse-item title="v1.0.2 - 2022-06-05">
              <ol>
                <li>优化部分页面，修改部分bug</li>
              </ol>
            </el-collapse-item>
          </el-collapse>
        </el-card>
      </el-col>
    </el-row>
  </div>
</template>

<script>
export default {
  name: "Index",
  data() {
    return {
      // 版本号
      version: "1.0.1",
    };
  },
  methods: {
    goTarget(href) {
      window.open(href, "_blank");
    },
  },
};
</script>

<style scoped lang="scss">
.home {
  blockquote {
    padding: 10px 20px;
    margin: 0 0 20px;
    font-size: 17.5px;
    border-left: 5px solid #eee;
  }
  hr {
    margin-top: 20px;
    margin-bottom: 20px;
    border: 0;
    border-top: 1px solid #eee;
  }
  .col-item {
    margin-bottom: 20px;
  }

  ul {
    padding: 0;
    margin: 0;
  }

  font-family: "open sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 13px;
  color: #676a6c;
  overflow-x: hidden;

  ul {
    list-style-type: none;
  }

  h4 {
    margin-top: 0px;
  }

  h2 {
    margin-top: 10px;
    font-size: 26px;
    font-weight: 100;
  }

  p {
    margin-top: 10px;

    b {
      font-weight: 700;
    }
  }

  .update-log {
    ol {
      display: block;
      list-style-type: decimal;
      margin-block-start: 1em;
      margin-block-end: 1em;
      margin-inline-start: 0;
      margin-inline-end: 0;
      padding-inline-start: 40px;
    }
  }
}
</style>

