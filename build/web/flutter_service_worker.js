'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "dcb56d40302b364e9c289412eeeb2e67",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/icons/facebook.png": "021ada146ffb7c1753557ff29618d04c",
"assets/icons/favicon-black.png": "d1f7a6cbf9647a596602f684ae957567",
"assets/icons/favicon.png": "c249fce7f1464860e5962f4d31dc65d1",
"assets/icons/gb-flag.svg": "05a4a9027bfb21945e2c36bf225f35b1",
"assets/icons/github.png": "d22ee3727a7216019c3848df6eafa024",
"assets/icons/instagram.png": "26631a4043b14dff84180bdf51c3cacb",
"assets/icons/linkedin.png": "926e2dcf5ab4220a359867614556df68",
"assets/icons/logo.png": "d55d76c201a62df5b53bda62d2b6fbed",
"assets/icons/medium.png": "fb86f4060325caef8ea1f0fad0d25f40",
"assets/icons/medium_light.png": "bd516690c99267a778885736015befe8",
"assets/icons/tr-flag.png": "3b82968284ac5809b0b20a36a34ea000",
"assets/icons/tr-flag.svg": "b4a158322e521d3a0ec446c0fbd07ca0",
"assets/icons/twitter.png": "8f35a40403a84631c4125c4f1859c7a6",
"assets/icons/uk-flag.png": "c16db563975226420de7e603c786c9eb",
"assets/images/pp1.jpg": "cfa98719a86116b56cb5f483a73e455f",
"assets/images/projects/project_1.jpg": "34a07538fa6e43b6bba1225641e67837",
"assets/images/projects/project_2.jpg": "0180e7df28bae5e75643a034e20ef472",
"assets/images/projects/project_3.jpg": "f6cd79a80df77bc56df8445c18c9a8c2",
"assets/images/projects/project_4.jpg": "81f7ccfd9bb668fa47ce589345f8ac9c",
"assets/images/projects/project_5.jpg": "e283fd2e67e5ebc0114af4ae8d9e5efd",
"assets/images/projects/project_6.jpeg": "b4ee0a93720b7e4ab4228e65c53117ea",
"assets/images/site_background.png": "009d9a05546c721f7b5eb29964238452",
"assets/images/site_background_desktop.png": "aacdd5270f666a3c253b39f41f095ca0",
"assets/langs/en.json": "e30d6a6c85d6aa13155682b40f5c2a9d",
"assets/langs/tr.json": "9df0ceb11efab2fb0e4bee33601d864b",
"assets/NOTICES": "63a6ef352b439465aae1d5958a2e6d9f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/easy_localization/i18n/ar-DZ.json": "acc0a8eebb2fcee312764600f7cc41ec",
"assets/packages/easy_localization/i18n/ar.json": "acc0a8eebb2fcee312764600f7cc41ec",
"assets/packages/easy_localization/i18n/en-US.json": "5bd908341879a431441c8208ae30e4fd",
"assets/packages/easy_localization/i18n/en.json": "5bd908341879a431441c8208ae30e4fd",
"favicon.ico": "5ce6c8f5f63e0e40893b385b223a9f12",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "80f8c396ec4c7e1b0e30db28a4172ae3",
"/": "80f8c396ec4c7e1b0e30db28a4172ae3",
"main.dart.js": "538759db43e5ebe96851f300ddafc4d6",
"manifest.json": "2983bcc8bb10e95ae2b954abdf8847f0",
"splash/img/dark-1x.png": "fd0a35465b1a6eb74a7aec1c2c64fbfb",
"splash/img/dark-2x.png": "cba199cb391c7324a76ebbb70038976d",
"splash/img/dark-3x.png": "fabe816521cf05c7514cdea6b85d0ced",
"splash/img/light-1x.png": "fd0a35465b1a6eb74a7aec1c2c64fbfb",
"splash/img/light-2x.png": "cba199cb391c7324a76ebbb70038976d",
"splash/img/light-3x.png": "fabe816521cf05c7514cdea6b85d0ced",
"splash/style.css": "86126e7e4072786170390b7ceee604b3",
"version.json": "ba7fb2627eb1217c4da4d9a4786f7054"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
