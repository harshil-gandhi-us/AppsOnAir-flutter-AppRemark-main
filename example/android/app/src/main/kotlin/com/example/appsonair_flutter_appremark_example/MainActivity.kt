package com.example.appsonair_flutter_appremark_example
import io.flutter.embedding.android.RenderMode

import io.flutter.embedding.android.FlutterActivity

class MainActivity : FlutterActivity(){
    override fun getRenderMode(): RenderMode {
        return RenderMode.texture
    }
}
