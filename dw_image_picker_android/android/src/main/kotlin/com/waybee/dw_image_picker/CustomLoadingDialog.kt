package com.waybee.dw_image_picker

import android.app.Dialog
import android.content.Context
import android.os.Bundle
import android.view.Gravity
import android.view.ViewGroup
import android.widget.TextView
import com.luck.picture.lib.R as PictureSelectorR

class CustomLoadingDialog(context: Context,  private val message: String?) : Dialog(context, PictureSelectorR.style.Picture_Theme_AlertDialog) {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.loading_dialog)
        setDialogSize()
        val loadingTextView = findViewById<TextView>(R.id.loading_text)
        loadingTextView.text = message ?: "Loading"
        setCancelable(false)
        setCanceledOnTouchOutside(false)
    }

    private fun setDialogSize() {
        val params = window!!.attributes
        params.width = ViewGroup.LayoutParams.WRAP_CONTENT
        params.height = ViewGroup.LayoutParams.WRAP_CONTENT
        params.gravity = Gravity.CENTER
        window!!.setWindowAnimations(PictureSelectorR.style.PictureThemeDialogWindowStyle)
        window!!.attributes = params
    }
}