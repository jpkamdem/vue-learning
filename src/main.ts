import { createApp } from 'vue'
import './style.css'
import App from './App.vue'
import { createRouter, createWebHistory } from 'vue-router'
import Home from './pages/Home.vue'
import NotFound from './pages/NotFound.vue'
import About from './pages/About.vue'

const router = createRouter({
  history: createWebHistory(),
  routes: [
    { path: '/', name: 'Home', component: Home },
    { path: '/about', name: '', component: About },
    // { path: '/', name: '', component:  },
    { path: '/:pathMatch(.*)*', name: 'Page not found', component: NotFound },
  ]
})

createApp(App).use(router).mount('#app')
