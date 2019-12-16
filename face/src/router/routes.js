const routes = [{
  path: '/',
  component: () => import('layouts/Landing.vue'),
  children: [
    {
      path: '',
      alias: '/about',
      component: () => import('pages/landing/About.vue')
    },
    {
      path: '/support',
      component: () => import('pages/landing/Support.vue')
    },
    {
      path: '/contribute',
      component: () => import('pages/landing/Contribute.vue')
    },
    {
      path: '/handbook',
      component: () => import('pages/landing/Handbook.vue')
    }
  ]
},
/*
{
  path: '/dashboard',
  component: () => import('layouts/Dashboard.vue'),
  children: [
    {
      path: '',
      component: () => import('pages/dashboard/Console.vue')
    }
    {
      path: 'profile',
      component: () => import('pages/dashboard/Profile.vue')
    },
    {
      path: 'needs',
      component: () => import('pages/dashboard/Needs.vue')
    }
  ]
}
*/
{
  path: '*',
  component: () => import('pages/NotFound.vue')
}]

export default routes
