import Vue from "vue";
import App from "./App.vue";
import "./registerServiceWorker";
import router from "./router";
import store from "./store";
import VueLazyload from "vue-lazyload";
import infiniteScroll from "vue-infinite-scroll";
import VueCookie from "vue-cookie";
import { userInfo } from "./api";
import {
  Button,
  Pagination,
  Checkbox,
  Icon,
  Autocomplete,
  Loading,
  Message,
  Notification,
  Steps,
  Step,
  Table,
  TableColumn,
  Input,
  Dialog,
  Select,
  Option,
} from "element-ui";
import { getStore } from "@/utils/storage";
import VueContentPlaceholders from "vue-content-placeholders";
Vue.use(VueContentPlaceholders);
Vue.use(Button);
Vue.use(Pagination);
Vue.use(Checkbox);
Vue.use(Icon);
Vue.use(Autocomplete);
Vue.use(Steps);
Vue.use(Step);
Vue.use(Table);
Vue.use(TableColumn);
Vue.use(Input);
Vue.use(Option);
Vue.use(Dialog);
Vue.use(Select);
Vue.use(Loading.directive);
Vue.prototype.$loading = Loading.service;
Vue.prototype.$notify = Notification;
Vue.prototype.$message = Message;
Vue.use(infiniteScroll);
Vue.use(VueCookie);
Vue.use(VueLazyload, {
  // preLoad: 1.3,
  // error: 'dist/error.png',
  loading: "/static/images/load.gif",
  // attempt: 1
});
Vue.config.productionTip = false;

const whiteList = [
  "/home",
  "/goods",
  "/login",
  "/register",
  "/goodsDetails",
  "/thanks",
  "/search",
  "/refreshsearch",
  "/refreshgoods",
]; // 不需要登陆的页面
router.beforeEach(function (to, from, next) {
  let token = getStore("token");
  if (token) {
    var params = "";
    userInfo(params)
      .then((res) => {
        store.commit("RECORD_USERINFO", { username: res.username });
        if (to.path === "/login") {
          //  跳转到
          next({ path: "/" });
        }
        next();
      })
      .catch((error) => {
        console.log(error);
        if (whiteList.indexOf(to.path) !== -1) {
          // 白名单
          next();
        } else {
          next("/login");
        }
      });
  } else {
    if (whiteList.indexOf(to.path) !== -1) {
      // 白名单
      next();
    } else {
      next("/login");
    }
  }
});

new Vue({
  router,
  store,
  render: (h) => h(App),
}).$mount("#app");
