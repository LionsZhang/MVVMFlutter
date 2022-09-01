package com.bm.pda.bmpda

import android.text.TextUtils
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {


    private val ANDROID_ENGINE_METHOD = "fblock.lighthouse/methodchannel"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            ANDROID_ENGINE_METHOD
        ).setMethodCallHandler { call, result ->
            if (call.method == "getChannel") {
                val channel: String?=null
                if (TextUtils.isEmpty(channel)) {
                    result.success("official")
                } else {
                    result.success(channel)
                }
            } else {
                result.notImplemented()
            }
        }
    }
}
