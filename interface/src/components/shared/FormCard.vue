<template>
  <q-card flat bordered class="bg-grey-3">
    <q-form @submit.prevent="$parent.onSubmit()"
            @reset="onReset"
            ref='form'>
      <q-card-section>
        <div class="row items-center no-wrap">
          <div class="col">
            <div class="text-h6 q-pb-none">{{title}}</div>
          </div>
          <q-btn color="grey-7" round flat icon="more_vert">
            <q-menu fit anchor="bottom left" self="top left" auto-close>
              <div class="row no-wrap">
                <q-btn size='md' dense flat align="right" class='q-pa-xs full-width'
                  @click="onReset"
                  icon-right="fas fa-trash text-grey-7"
                  :label="$t('reset.option')"
                  type='reset'>
                </q-btn>
              </div>
              <div v-if="options">
                <div class="row no-wrap" v-for="button in options"
                  v-bind:key="button.label">
                  <q-btn size='md' dense flat
                    align="right" class='full-width'
                    v-bind:to='button.to'
                    v-on:click='button.click'
                    v-bind:icon-right="button.icon"
                    v-bind:label="button.label"
                    v-bind:type="button.type">
                  </q-btn>
                </div>
              </div>
            </q-menu>
          </q-btn>
        </div>
      </q-card-section>
      <q-card-section>
        <slot></slot>
      </q-card-section>
      <q-separator />
      <q-card-actions>
        <q-btn flat
          v-for="button in actions"
          v-bind:class='button.class'
          v-bind:key="button.label"
          v-bind:icon="button.icon"
          v-bind:label="button.label"
          v-bind:type="button.type">
        </q-btn>
      </q-card-actions>
    </q-form>
  </q-card>
</template>
<script>
export default {
  mounted () {
    this.$parent.clearFields()
  },
  props: {
    title: String,
    actions: Array,
    options: {
      type: Array,
      default: Array.new
    }
  },
  data () {
    return {}
  },
  methods: {
    onReset () {
      this.$q.dialog({
        title: this.$t('reset.title'),
        message: this.$t('reset.message'),
        cancel: true,
        persistent: true
      }).onOk(() => {
        this.$parent.clearFields()
      })
    }
  }
}
</script>
