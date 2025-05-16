<script setup lang="ts">
defineProps<{ isActive: boolean }>();
</script>

<template>
  <aside :class="{ toggle: isActive }">
    <ul>
      <RouterLink to="/">Home</RouterLink>
      <RouterLink to="/about">About</RouterLink>
      <!-- <RouterLink to="/"></RouterLink> -->
      <RouterLink to="/broken-link">Broken link</RouterLink>
    </ul>
  </aside>
</template>

<style scoped>
aside {
  height: 100%;
  background: white;
  border-right: 1px solid var(--border-color);
  z-index: 10;
  top: 59px;
}

ul {
  width: 280px;
  display: flex;
  flex-flow: column nowrap;
}

a {
  text-decoration: none;
  color: black;
  padding: 1em;
}

a:hover {
  background: var(--navigation-hover);
}

.router-link-exact-active,
.router-link-exact-active:hover {
  background: var(--navigation-active);
  font-weight: 600;
}

@media (max-width: 900px) {
  aside {
    height: 95%;
    display: none;
    position: absolute;
    top: 60px;
  }

  .toggle {
    display: block;
  }

  ul {
    height: 80dvh;
  }
}
</style>
