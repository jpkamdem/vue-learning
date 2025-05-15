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
  border-right: 1px solid var(--border-color);
}

ul {
  width: 280px;
  display: flex;
  flex-flow: column nowrap;
  background: white;
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

.toggle {
  display: block;
}

@media (max-width: 900px) {
  aside {
    display: none;
  }

  ul {
    height: 80dvh;
    border-right: 1px solid var(--border-color);
    border-bottom: 1px solid var(--border-color);
  }
}
</style>
