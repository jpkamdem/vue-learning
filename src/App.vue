<script setup lang="ts">
import { RouterView, useRoute } from "vue-router";
import { ref, watch } from "vue";
import Header from "./components/Header.vue";
import Navigation from "./components/Navigation.vue";

const route = useRoute();

const isActive = ref(false);
function setIsActive() {
  isActive.value = !isActive.value;
}

watch(route, () => {
  isActive.value = false;
});
</script>

<template>
  <div class="main-container">
    <Header style="grid-area: header" @toggle-navigation="setIsActive" />
    <Navigation style="grid-area: navigation" :is-active="isActive" />
    <main style="grid-area: main">
      <RouterView />
    </main>
  </div>
</template>

<style scoped>
.main-container {
  min-height: 100dvh;
  display: grid;
  grid-template-rows: auto 1fr;
  grid-template-columns: auto 1fr;
  grid-template-areas:
    "header header"
    "navigation main";
}

main {
  width: 50dvw;
  margin-inline: auto;
}

@media (max-width: 2000px) {
  main {
    width: 60dvw;
  }
}

@media (max-width: 1360px) {
  main {
    margin: 0;
    width: 100%;
    border: none;
  }
}

@media (max-width: 900px) {
  .main-container {
    display: flex;
    flex-flow: column nowrap;
  }
}
</style>
