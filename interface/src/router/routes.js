const routes = [{
  path: '/',
  component: () => import('layouts/Landing.vue'),
  children: [{
    path: '',
    component: () => import('pages/landing/Index.vue')
  },
  {
    path: '/about',
    component: () => import('pages/landing/About.vue')
  }
  /*
  {
    path: '/signup',
    component: () => import('pages/landing/Signup.vue')
  },
  {
    path: '/handbook',
    component: () => import('pages/landing/Handbook.vue')
  },
  {
    path: '/contact',
    component: () => import('pages/landing/Contact.vue')
  }
  */
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
