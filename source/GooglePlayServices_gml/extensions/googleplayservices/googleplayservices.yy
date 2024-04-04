{
  "$GMExtension":"",
  "%Name":"GooglePlayServices",
  "androidactivityinject":"",
  "androidclassname":"YYGooglePlayServices",
  "androidcodeinjection":"<YYAndroidStringValuesInjection>\r\n<string name=\"gps_app_id\">${YYEXTOPT_GooglePlayServices_AppID}</string>\r\n</YYAndroidStringValuesInjection>\r\n\r\n<YYAndroidGradleDependencies>\r\nandroid {\r\n    lintOptions {\r\n        checkReleaseBuilds false\r\n        abortOnError false\r\n    }\r\n}\r\n\r\n//https://developers.google.com/android/guides/setup\r\ndependencies {\r\n//https://developers.google.com/android/guides/releases\r\n    implementation \"com.google.android.gms:play-services-games-v2:+\"\r\n}\r\n\r\n</YYAndroidGradleDependencies>\r\n\r\n<YYAndroidManifestApplicationInject>\r\n\r\n<!-- https://developers.google.com/games/services/android/quickstart -->\r\n\r\n<meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\"/>\r\n<meta-data android:name=\"com.google.android.gms.games.APP_ID\" android:value=\"@string/gps_app_id\"/>\r\n<meta-data android:name=\"com.google.android.gms.appstate.APP_ID\" android:value=\"@string/gps_app_id\"/>\r\n\r\n</YYAndroidManifestApplicationInject>\r\n\r\n<YYAndroidProguard>\r\n# The native PGS library wraps the Java PGS SDK using reflection.\r\n-dontobfuscate\r\n-keeppackagenames\r\n\r\n# Needed for callbacks.\r\n-keepclasseswithmembernames,includedescriptorclasses class * {\r\n    native *;\r\n}\r\n\r\n# Needed for helper libraries.\r\n-keep class com.google.example.games.juihelper.** {\r\n  public protected *;\r\n}\r\n-keep class com.sample.helper.** {\r\n  public protected *;\r\n}\r\n\r\n# Needed for GoogleApiClient and auth stuff.\r\n-keep class com.google.android.gms.common.api.** {\r\n  public protected *;\r\n}\r\n\r\n# Keep all of the \"nearby\" library, which is needed by the native PGS library\r\n# at runtime (though deprecated).\r\n-keep class com.google.android.gms.nearby.** {\r\n  public protected *;\r\n}\r\n\r\n# Keep all of the public PGS APIs.\r\n-keep class com.google.android.gms.games.** {\r\n  public protected *;\r\n}\r\n</YYAndroidProguard>",
  "androidinject":"\r\n\r\n<!-- https://developers.google.com/games/services/android/quickstart -->\r\n\r\n<meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\"></meta-data>\r\n<meta-data android:name=\"com.google.android.gms.games.APP_ID\" android:value=\"@string/gps_app_id\"></meta-data>\r\n<meta-data android:name=\"com.google.android.gms.appstate.APP_ID\" android:value=\"@string/gps_app_id\"></meta-data>\r\n\r\n",
  "androidmanifestinject":"",
  "androidPermissions":[],
  "androidProps":true,
  "androidsourcedir":"",
  "author":"",
  "classname":"",
  "copyToTargets":8,
  "description":"",
  "exportToGame":true,
  "extensionVersion":"2.1.3",
  "files":[
    {"$GMExtensionFile":"","%Name":"GooglePlayService.ext","constants":[
        {"$GMExtensionConstant":"","%Name":"Achievement_STATE_HIDDEN","hidden":false,"name":"Achievement_STATE_HIDDEN","resourceType":"GMExtensionConstant","resourceVersion":"2.0","value":"2",},
        {"$GMExtensionConstant":"","%Name":"Achievement_STATE_REVEALED","hidden":false,"name":"Achievement_STATE_REVEALED","resourceType":"GMExtensionConstant","resourceVersion":"2.0","value":"1",},
        {"$GMExtensionConstant":"","%Name":"Achievement_STATE_UNLOCKED","hidden":false,"name":"Achievement_STATE_UNLOCKED","resourceType":"GMExtensionConstant","resourceVersion":"2.0","value":"0",},
        {"$GMExtensionConstant":"","%Name":"Achievement_TYPE_INCREMENTAL","hidden":false,"name":"Achievement_TYPE_INCREMENTAL","resourceType":"GMExtensionConstant","resourceVersion":"2.0","value":"1",},
        {"$GMExtensionConstant":"","%Name":"Achievement_TYPE_STANDARD","hidden":false,"name":"Achievement_TYPE_STANDARD","resourceType":"GMExtensionConstant","resourceVersion":"2.0","value":"0",},
        {"$GMExtensionConstant":"","%Name":"Leaderboard_TIME_SPAN_DAILY","hidden":false,"name":"Leaderboard_TIME_SPAN_DAILY","resourceType":"GMExtensionConstant","resourceVersion":"2.0","value":"0",},
        {"$GMExtensionConstant":"","%Name":"Leaderboard_TIME_SPAN_WEEKLY","hidden":false,"name":"Leaderboard_TIME_SPAN_WEEKLY","resourceType":"GMExtensionConstant","resourceVersion":"2.0","value":"1",},
        {"$GMExtensionConstant":"","%Name":"Leaderboard_TIME_SPAN_ALL_TIME","hidden":false,"name":"Leaderboard_TIME_SPAN_ALL_TIME","resourceType":"GMExtensionConstant","resourceVersion":"2.0","value":"2",},
        {"$GMExtensionConstant":"","%Name":"Leaderboard_COLLECTION_PUBLIC","hidden":false,"name":"Leaderboard_COLLECTION_PUBLIC","resourceType":"GMExtensionConstant","resourceVersion":"2.0","value":"0",},
        {"$GMExtensionConstant":"","%Name":"Leaderboard_COLLECTION_SOCIAL","hidden":false,"name":"Leaderboard_COLLECTION_SOCIAL","resourceType":"GMExtensionConstant","resourceVersion":"2.0","value":"1",},
      ],"copyToTargets":8,"filename":"GooglePlayService.ext","final":"","functions":[
        {"$GMExtensionFunction":"","%Name":"GooglePlayServices_Achievements_Show","argCount":0,"args":[],"documentation":"","externalName":"GooglePlayServices_Achievements_Show","help":"GooglePlayServices_Achievements_Show()","hidden":false,"kind":4,"name":"GooglePlayServices_Achievements_Show","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"GooglePlayServices_Achievements_Increment","argCount":0,"args":[1,2,],"documentation":"","externalName":"GooglePlayServices_Achievements_Increment","help":"GooglePlayServices_Achievements_Increment(arch_id,steps)","hidden":false,"kind":4,"name":"GooglePlayServices_Achievements_Increment","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"GooglePlayServices_Achievements_Reveal","argCount":0,"args":[1,],"documentation":"","externalName":"GooglePlayServices_Achievements_Reveal","help":"GooglePlayServices_Achievements_Reveal(id)","hidden":false,"kind":4,"name":"GooglePlayServices_Achievements_Reveal","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"GooglePlayServices_Achievements_SetSteps","argCount":0,"args":[1,2,],"documentation":"","externalName":"GooglePlayServices_Achievements_SetSteps","help":"GooglePlayServices_Achievements_SetSteps(id,steps)","hidden":false,"kind":4,"name":"GooglePlayServices_Achievements_SetSteps","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"GooglePlayServices_Achievements_Unlock","argCount":0,"args":[1,],"documentation":"","externalName":"GooglePlayServices_Achievements_Unlock","help":"GooglePlayServices_Achievements_Unlock(id)","hidden":false,"kind":4,"name":"GooglePlayServices_Achievements_Unlock","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"GooglePlayServices_Leaderboard_ShowAll","argCount":0,"args":[],"documentation":"","externalName":"GooglePlayServices_Leaderboard_ShowAll","help":"GooglePlayServices_Leaderboard_ShowAll()","hidden":false,"kind":4,"name":"GooglePlayServices_Leaderboard_ShowAll","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"GooglePlayServices_Leaderboard_Show","argCount":0,"args":[1,],"documentation":"","externalName":"GooglePlayServices_Leaderboard_Show","help":"GooglePlayServices_Leaderboard_Show(id)","hidden":false,"kind":4,"name":"GooglePlayServices_Leaderboard_Show","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"GooglePlayServices_Leaderboard_SubmitScore","argCount":0,"args":[1,2,1,],"documentation":"","externalName":"GooglePlayServices_Leaderboard_SubmitScore","help":"GooglePlayServices_Leaderboard_SubmitScore(leader_id,score,scoreTag)","hidden":false,"kind":4,"name":"GooglePlayServices_Leaderboard_SubmitScore","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"GooglePlayServices_SavedGames_ShowSavedGamesUI","argCount":0,"args":[1,2,2,2,],"documentation":"","externalName":"GooglePlayServices_SavedGames_ShowSavedGamesUI","help":"GooglePlayServices_SavedGames_ShowSavedGamesUI(tittle,buttonAdd,buttonDelete,max)","hidden":false,"kind":4,"name":"GooglePlayServices_SavedGames_ShowSavedGamesUI","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"GooglePlayServices_SavedGames_CommitAndClose","argCount":0,"args":[1,1,1,1,],"documentation":"","externalName":"GooglePlayServices_SavedGames_CommitAndClose","help":"GooglePlayServices_SavedGames_CommitAndClose(name,descripction,data,pathImage)","hidden":false,"kind":4,"name":"GooglePlayServices_SavedGames_CommitAndClose","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"GooglePlayServices_SavedGames_Load","argCount":0,"args":[2,],"documentation":"","externalName":"GooglePlayServices_SavedGames_Load","help":"GooglePlayServices_SavedGames_Load(forced)","hidden":false,"kind":4,"name":"GooglePlayServices_SavedGames_Load","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"GooglePlayServices_SavedGames_Delete","argCount":0,"args":[1,],"documentation":"","externalName":"GooglePlayServices_SavedGames_Delete","help":"GooglePlayServices_SavedGames_Delete(name)","hidden":false,"kind":4,"name":"GooglePlayServices_SavedGames_Delete","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"GooglePlayServices_SavedGames_DiscardAndClose","argCount":0,"args":[1,],"documentation":"","externalName":"GooglePlayServices_SavedGames_DiscardAndClose","help":"GooglePlayServices_SavedGames_DiscardAndClose(fileName)","hidden":false,"kind":4,"name":"GooglePlayServices_SavedGames_DiscardAndClose","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"GooglePlayServices_SavedGames_Open","argCount":0,"args":[1,],"documentation":"","externalName":"GooglePlayServices_SavedGames_Open","help":"GooglePlayServices_SavedGames_Open(fileName)","hidden":false,"kind":4,"name":"GooglePlayServices_SavedGames_Open","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"GooglePlayServices_SavedGames_ResolveConflict","argCount":0,"args":[],"documentation":"","externalName":"GooglePlayServices_SavedGames_ResolveConflict","help":"GooglePlayServices_SavedGames_ResolveConflict()","hidden":false,"kind":4,"name":"GooglePlayServices_SavedGames_ResolveConflict","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"GooglePlayServices_SavedGames_CommitNew","argCount":0,"args":[1,1,1,1,],"documentation":"","externalName":"GooglePlayServices_SavedGames_CommitNew","help":"GooglePlayServices_SavedGames_CommitNew(name,description,data,pathImage)","hidden":false,"kind":4,"name":"GooglePlayServices_SavedGames_CommitNew","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"GooglePlayServices_Player_Current","argCount":0,"args":[],"documentation":"","externalName":"GooglePlayServices_Player_Current","help":"GooglePlayServices_Player_Current()","hidden":false,"kind":4,"name":"GooglePlayServices_Player_Current","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"GooglePlayServices_Player_CurrentID","argCount":0,"args":[],"documentation":"","externalName":"GooglePlayServices_Player_CurrentID","help":"GooglePlayServices_Player_CurrentID()","hidden":false,"kind":4,"name":"GooglePlayServices_Player_CurrentID","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"GooglePlayServices_UriToPath","argCount":0,"args":[1,],"documentation":"","externalName":"GooglePlayServices_UriToPath","help":"GooglePlayServices_UriToPath(uri)","hidden":false,"kind":4,"name":"GooglePlayServices_UriToPath","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"GooglePlayServices_IsAvailable","argCount":0,"args":[],"documentation":"","externalName":"GooglePlayServices_IsAvailable","help":"GooglePlayServices_IsAvailable()","hidden":false,"kind":4,"name":"GooglePlayServices_IsAvailable","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"GooglePlayServices_Achievements_GetStatus","argCount":0,"args":[2,],"documentation":"","externalName":"GooglePlayServices_Achievements_GetStatus","help":"GooglePlayServices_Achievements_GetStatus(force_reload)","hidden":false,"kind":4,"name":"GooglePlayServices_Achievements_GetStatus","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"GooglePlayServices_Leaderboard_LoadPlayerCenteredScores","argCount":0,"args":[1,2,2,2,2,],"documentation":"","externalName":"GooglePlayServices_Leaderboard_LoadPlayerCenteredScores","help":"GooglePlayServices_Leaderboard_LoadPlayerCenteredScores(leaderboardId, span, leaderboardCollection, maxResults, forceReload)","hidden":false,"kind":4,"name":"GooglePlayServices_Leaderboard_LoadPlayerCenteredScores","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"GooglePlayServices_Leaderboard_LoadTopScores","argCount":0,"args":[1,2,2,2,2,],"documentation":"","externalName":"GooglePlayServices_Leaderboard_LoadTopScores","help":"GooglePlayServices_Leaderboard_LoadTopScores(leaderboardId, span, leaderboardCollection, maxResults, forceReload)","hidden":false,"kind":4,"name":"GooglePlayServices_Leaderboard_LoadTopScores","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"GooglePlayServices_Leaderboard_LoadTopScores","argCount":0,"args":[1,2,2,2,2,],"documentation":"","externalName":"GooglePlayServices_Leaderboard_LoadTopScores","help":"GooglePlayServices_Leaderboard_LoadTopScores(leaderboardId, span, leaderboardCollection, maxResults, forceReload)","hidden":false,"kind":4,"name":"GooglePlayServices_Leaderboard_LoadTopScores","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"GooglePlayServices_SignIn","argCount":0,"args":[],"documentation":"","externalName":"GooglePlayServices_SignIn","help":"GooglePlayServices_SignIn()","hidden":false,"kind":4,"name":"GooglePlayServices_SignIn","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"GooglePlayServices_IsAuthenticated","argCount":0,"args":[],"documentation":"","externalName":"GooglePlayServices_IsAuthenticated","help":"GooglePlayServices_IsAuthenticated()","hidden":false,"kind":4,"name":"GooglePlayServices_IsAuthenticated","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"GooglePlayServices_RequestServerSideAccess","argCount":0,"args":[1,2,],"documentation":"","externalName":"GooglePlayServices_RequestServerSideAccess","help":"GooglePlayServices_RequestServerSideAccess(serverClientId,forceRefreshToken)","hidden":false,"kind":4,"name":"GooglePlayServices_RequestServerSideAccess","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
        {"$GMExtensionFunction":"","%Name":"GooglePlayServices_PlayerStats_LoadPlayerStats","argCount":0,"args":[2,],"documentation":"","externalName":"GooglePlayServices_PlayerStats_LoadPlayerStats","help":"GooglePlayServices_PlayerStats_LoadPlayerStats(forcedLoad)","hidden":false,"kind":4,"name":"GooglePlayServices_PlayerStats_LoadPlayerStats","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":2,},
      ],"init":"","kind":4,"name":"GooglePlayService.ext","order":[
        {"name":"GooglePlayServices_Achievements_Show","path":"extensions/GooglePlayServices/GooglePlayServices.yy",},
        {"name":"GooglePlayServices_Achievements_Increment","path":"extensions/GooglePlayServices/GooglePlayServices.yy",},
        {"name":"GooglePlayServices_Achievements_Reveal","path":"extensions/GooglePlayServices/GooglePlayServices.yy",},
        {"name":"GooglePlayServices_Achievements_SetSteps","path":"extensions/GooglePlayServices/GooglePlayServices.yy",},
        {"name":"GooglePlayServices_Achievements_Unlock","path":"extensions/GooglePlayServices/GooglePlayServices.yy",},
        {"name":"GooglePlayServices_Achievements_GetStatus","path":"extensions/GooglePlayServices/GooglePlayServices.yy",},
        {"name":"GooglePlayServices_Leaderboard_ShowAll","path":"extensions/GooglePlayServices/GooglePlayServices.yy",},
        {"name":"GooglePlayServices_Leaderboard_Show","path":"extensions/GooglePlayServices/GooglePlayServices.yy",},
        {"name":"GooglePlayServices_Leaderboard_SubmitScore","path":"extensions/GooglePlayServices/GooglePlayServices.yy",},
        {"name":"GooglePlayServices_Leaderboard_LoadPlayerCenteredScores","path":"extensions/GooglePlayServices/GooglePlayServices.yy",},
        {"name":"GooglePlayServices_Leaderboard_LoadTopScores","path":"extensions/GooglePlayServices/GooglePlayServices.yy",},
        {"name":"GooglePlayServices_SavedGames_ShowSavedGamesUI","path":"extensions/GooglePlayServices/GooglePlayServices.yy",},
        {"name":"GooglePlayServices_SavedGames_CommitAndClose","path":"extensions/GooglePlayServices/GooglePlayServices.yy",},
        {"name":"GooglePlayServices_SavedGames_Load","path":"extensions/GooglePlayServices/GooglePlayServices.yy",},
        {"name":"GooglePlayServices_SavedGames_Delete","path":"extensions/GooglePlayServices/GooglePlayServices.yy",},
        {"name":"GooglePlayServices_SavedGames_DiscardAndClose","path":"extensions/GooglePlayServices/GooglePlayServices.yy",},
        {"name":"GooglePlayServices_SavedGames_Open","path":"extensions/GooglePlayServices/GooglePlayServices.yy",},
        {"name":"GooglePlayServices_SavedGames_ResolveConflict","path":"extensions/GooglePlayServices/GooglePlayServices.yy",},
        {"name":"GooglePlayServices_SavedGames_CommitNew","path":"extensions/GooglePlayServices/GooglePlayServices.yy",},
        {"name":"GooglePlayServices_Player_Current","path":"extensions/GooglePlayServices/GooglePlayServices.yy",},
        {"name":"GooglePlayServices_Player_CurrentID","path":"extensions/GooglePlayServices/GooglePlayServices.yy",},
        {"name":"GooglePlayServices_UriToPath","path":"extensions/GooglePlayServices/GooglePlayServices.yy",},
        {"name":"GooglePlayServices_IsAvailable","path":"extensions/GooglePlayServices/GooglePlayServices.yy",},
      ],"origname":"","ProxyFiles":[],"resourceType":"GMExtensionFile","resourceVersion":"2.0","uncompress":false,"usesRunnerInterface":false,},
  ],
  "gradleinject":"\r\nandroid {\r\n    lintOptions {\r\n        checkReleaseBuilds false\r\n        abortOnError false\r\n    }\r\n}\r\n\r\n//https://developers.google.com/android/guides/setup\r\ndependencies {\r\n//https://developers.google.com/android/guides/releases\r\n    implementation \"com.google.android.gms:play-services-games-v2:+\"\r\n}\r\n\r\n",
  "hasConvertedCodeInjection":true,
  "helpfile":"",
  "HTML5CodeInjection":"",
  "html5Props":false,
  "IncludedResources":[],
  "installdir":"",
  "iosCocoaPodDependencies":"",
  "iosCocoaPods":"",
  "ioscodeinjection":"",
  "iosdelegatename":"",
  "iosplistinject":"",
  "iosProps":false,
  "iosSystemFrameworkEntries":[],
  "iosThirdPartyFrameworkEntries":[],
  "license":"",
  "maccompilerflags":"",
  "maclinkerflags":"",
  "macsourcedir":"",
  "name":"GooglePlayServices",
  "options":[
    {"$GMExtensionOption":"","%Name":"__extOptLabel","defaultValue":"APP OPTIONS:","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"9d0b1496-d98c-4f0d-a615-f2afa4873468","hidden":false,"listItems":[],"name":"__extOptLabel","optType":5,"resourceType":"GMExtensionOption","resourceVersion":"2.0",},
    {"$GMExtensionOption":"","%Name":"AppID","defaultValue":"","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"2333e839-6686-4c10-a29b-851041b2e067","hidden":false,"listItems":[],"name":"AppID","optType":2,"resourceType":"GMExtensionOption","resourceVersion":"2.0",},
    {"$GMExtensionOption":"","%Name":"__extOptLabel1","defaultValue":"EXTRA OPTIONS:","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"b8e7eb69-cec3-466b-b60e-9dfdea781aba","hidden":false,"listItems":[],"name":"__extOptLabel1","optType":5,"resourceType":"GMExtensionOption","resourceVersion":"2.0",},
    {"$GMExtensionOption":"","%Name":"logLevel","defaultValue":"1","description":"The log level to be used by the script file.\r\n0: Show only errors\r\n1: Show errors and warnings (recommended)\r\n2: Show everything (use before submitting a bug)","displayName":"Log Level","exportToINI":false,"extensionId":null,"guid":"99765f9a-ab54-45da-b2b3-e7119f9275a0","hidden":false,"listItems":[
        "0",
        "1",
        "2",
      ],"name":"logLevel","optType":6,"resourceType":"GMExtensionOption","resourceVersion":"2.0",},
    {"$GMExtensionOption":"","%Name":"versionStable","defaultValue":"2022.9.0.0","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"e0d1568c-d7ea-4236-956d-fb4729253091","hidden":true,"listItems":[],"name":"versionStable","optType":2,"resourceType":"GMExtensionOption","resourceVersion":"2.0",},
    {"$GMExtensionOption":"","%Name":"versionBeta","defaultValue":"2022.900.0.0","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"ba9b6890-9864-4fa1-aaec-d65ced643b86","hidden":true,"listItems":[],"name":"versionBeta","optType":2,"resourceType":"GMExtensionOption","resourceVersion":"2.0",},
    {"$GMExtensionOption":"","%Name":"versionDev","defaultValue":"9.9.1.0","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"6cd32340-3378-4234-bcac-ca9eb79d227a","hidden":true,"listItems":[],"name":"versionDev","optType":2,"resourceType":"GMExtensionOption","resourceVersion":"2.0",},
    {"$GMExtensionOption":"","%Name":"versionLTS","defaultValue":"2022.0.0.0","description":"","displayName":"","exportToINI":false,"extensionId":null,"guid":"3d566d80-4a40-4194-b092-6ec3f219c999","hidden":true,"listItems":[],"name":"versionLTS","optType":2,"resourceType":"GMExtensionOption","resourceVersion":"2.0",},
  ],
  "optionsFile":"options.json",
  "packageId":"",
  "parent":{
    "name":"GooglePlayServices",
    "path":"folders/GooglePlayServices.yy",
  },
  "productId":"",
  "resourceType":"GMExtension",
  "resourceVersion":"2.0",
  "sourcedir":"",
  "supportedTargets":-1,
  "tvosclassname":"",
  "tvosCocoaPodDependencies":"",
  "tvosCocoaPods":"",
  "tvoscodeinjection":"",
  "tvosdelegatename":"",
  "tvosmaccompilerflags":"",
  "tvosmaclinkerflags":"",
  "tvosplistinject":"",
  "tvosProps":false,
  "tvosSystemFrameworkEntries":[],
  "tvosThirdPartyFrameworkEntries":[],
}