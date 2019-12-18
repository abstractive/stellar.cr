<template>
  <img
    @click="revealSignIn"
    class='cursor-pointer text-center'
    src="statics/insignia.png"
    srcset="statics/insignia.png 260w,
            statics/insignia.png 800w,
            statics/insignia.png 1200w,
            statics/insignia.png 1600w"
    sizes="(max-width: 260px) 260w,
          (min-width: 260px) and (max-width: 800px) 800w,
          (min-width: 800px) and (max-width: 1200px) 1200w,
          (min-width: 1200px) 1600w"
    style="min-height: 260px; min-width: 260px"
  />

</template>

<script>
export default {
  methods: {
    revealSignIn () {
      this.$store.dispatch('showSignIn')
    }
  }
}
</script>
