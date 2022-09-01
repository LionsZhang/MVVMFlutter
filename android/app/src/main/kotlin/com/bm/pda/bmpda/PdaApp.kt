package com.bm.pda.bmpda

import android.annotation.TargetApi
import android.app.Application
import android.content.Context
import android.os.Build
import androidx.multidex.MultiDex


class PdaApp : Application() {

    override fun onCreate() {
        super.onCreate()
    }

    @TargetApi(Build.VERSION_CODES.ICE_CREAM_SANDWICH)
    fun onBaseContextAttached(base: Context?) {
        MultiDex.install(base)
    }

    @TargetApi(Build.VERSION_CODES.ICE_CREAM_SANDWICH)
    fun registerActivityLifecycleCallback(
        callbacks: ActivityLifecycleCallbacks?
    ) {
     registerActivityLifecycleCallbacks(callbacks)
    }

    override fun onTerminate() {
        super.onTerminate()
    }

}