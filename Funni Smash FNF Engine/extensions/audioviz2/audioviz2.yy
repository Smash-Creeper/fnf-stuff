{
  "optionsFile": "options.json",
  "options": [],
  "exportToGame": false,
  "supportedTargets": -1,
  "extensionVersion": "2.0.0",
  "packageId": "",
  "productId": "",
  "author": "",
  "date": "2019-04-20T08:05:14",
  "license": "",
  "description": "",
  "helpfile": "",
  "iosProps": false,
  "tvosProps": false,
  "androidProps": false,
  "installdir": "",
  "files": [
    {"filename":"gm_audioviz2.dll","origname":"","init":"","final":"","kind":1,"uncompress":false,"functions":[
        {"externalName":"audioviz_create","kind":1,"help":"aviz_create(path)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"resourceVersion":"1.0","name":"aviz_create","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"audioviz_destroy","kind":1,"help":"aviz_destroy(id)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"aviz_destroy","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"audioviz_exists","kind":1,"help":"aviz_exists(id)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"aviz_exists","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"audioviz_get_duration","kind":1,"help":"aviz_get_duration(id)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"aviz_get_duration","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"audioviz_get_samples","kind":1,"help":"aviz_get_samples(id)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"aviz_get_samples","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"audioviz_get_samplerate","kind":1,"help":"aviz_get_samplerate(id)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"aviz_get_samplerate","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"audioviz_get_channels","kind":1,"help":"aviz_get_channels(id)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"aviz_get_channels","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"audioviz_tick","kind":1,"help":"aviz_tick(id, audio_buffer, spectrum_buffer, samples)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            1,
            1,
            2,
          ],"resourceVersion":"1.0","name":"aviz_tick","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"audioviz_seek","kind":1,"help":"aviz_seek(id, sample)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"aviz_seek","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"audioviz_set_debug_mode","kind":1,"help":"aviz_set_debug_mode(mode)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
          ],"resourceVersion":"1.0","name":"aviz_set_debug_mode","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"audioviz_render","kind":1,"help":"aviz_render(id, buffer, render_width)","hidden":false,"returnType":2,"argCount":0,"args":[
            2,
            1,
            2,
          ],"resourceVersion":"1.0","name":"aviz_render","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[
        {"value":"0","hidden":false,"resourceVersion":"1.0","name":"AVIZ_DEBUGMODE_NONE","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"1","hidden":false,"resourceVersion":"1.0","name":"AVIZ_DEBUGMODEG_ERROR","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"2","hidden":false,"resourceVersion":"1.0","name":"AVIZ_DEBUGMODE_WARNING","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"3","hidden":false,"resourceVersion":"1.0","name":"AVIZ_DEBUGMODE_INFO","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"4","hidden":false,"resourceVersion":"1.0","name":"AVIZ_DEBUGMODE_DEBUG","tags":[],"resourceType":"GMExtensionConstant",},
      ],"ProxyFiles":[],"copyToTargets":64,"order":[
        {"name":"aviz_create","path":"extensions/audioviz2/audioviz2.yy",},
        {"name":"aviz_destroy","path":"extensions/audioviz2/audioviz2.yy",},
        {"name":"aviz_exists","path":"extensions/audioviz2/audioviz2.yy",},
        {"name":"aviz_get_duration","path":"extensions/audioviz2/audioviz2.yy",},
        {"name":"aviz_get_samples","path":"extensions/audioviz2/audioviz2.yy",},
        {"name":"aviz_get_samplerate","path":"extensions/audioviz2/audioviz2.yy",},
        {"name":"aviz_get_channels","path":"extensions/audioviz2/audioviz2.yy",},
        {"name":"aviz_tick","path":"extensions/audioviz2/audioviz2.yy",},
        {"name":"aviz_seek","path":"extensions/audioviz2/audioviz2.yy",},
        {"name":"aviz_render","path":"extensions/audioviz2/audioviz2.yy",},
        {"name":"aviz_set_debug_mode","path":"extensions/audioviz2/audioviz2.yy",},
      ],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
  ],
  "classname": "",
  "tvosclassname": "",
  "tvosdelegatename": "",
  "iosdelegatename": "",
  "androidclassname": "",
  "sourcedir": "",
  "androidsourcedir": "",
  "macsourcedir": "",
  "maccompilerflags": "",
  "tvosmaccompilerflags": "",
  "maclinkerflags": "",
  "tvosmaclinkerflags": "",
  "iosplistinject": "",
  "tvosplistinject": "",
  "androidinject": "",
  "androidmanifestinject": "",
  "androidactivityinject": "",
  "gradleinject": "",
  "iosSystemFrameworkEntries": [],
  "tvosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
  "IncludedResources": [],
  "androidPermissions": [],
  "copyToTargets": 64,
  "iosCocoaPods": "",
  "tvosCocoaPods": "",
  "iosCocoaPodDependencies": "",
  "tvosCocoaPodDependencies": "",
  "parent": {
    "name": "Extensions",
    "path": "folders/Extensions.yy",
  },
  "resourceVersion": "1.2",
  "name": "audioviz2",
  "tags": [],
  "resourceType": "GMExtension",
}