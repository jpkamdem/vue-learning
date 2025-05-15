<script setup lang="ts">
defineEmits(["toggle-navigation"]);
</script>

<template>
  <header>
    <ul>
      <h3>Vue App - 1</h3>
      <div class="burger-icon" @click="$emit('toggle-navigation')">
        <svg
          xmlns="http://www.w3.org/2000/svg"
          width="24"
          height="24"
          viewBox="0 0 24 24"
          fill="none"
          stroke="currentColor"
          stroke-width="2"
          stroke-linecap="round"
          stroke-linejoin="round"
          class="lucide lucide-menu-icon lucide-menu"
        >
          <path d="M4 12h16" />
          <path d="M4 18h16" />
          <path d="M4 6h16" />
        </svg>
      </div>
    </ul>
  </header>
</template>

<style scoped>
header {
  border-bottom: 1px solid var(--border-color);
}

ul {
  position: relative;
  display: flex;
  padding: 1em;
}

.burger-icon {
  display: none;
}

.burger-icon:hover {
  cursor: pointer;
}

@media (max-width: 900px) {
  .burger-icon {
    display: block;
    position: absolute;
    right: 12px;
  }
}
</style>
