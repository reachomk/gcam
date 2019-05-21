.class public interface abstract Lcom/android/camera/ui/PreviewStatusListener;
.super Ljava/lang/Object;
.source "PreviewStatusListener.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;,
        Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;
    }
.end annotation


# virtual methods
.method public abstract getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
.end method

.method public abstract getTouchListener()Landroid/view/View$OnTouchListener;
.end method

.method public abstract onPreviewFlipped()V
.end method

.method public abstract onPreviewLayoutChanged$51662RJ4E9NMIP1FEPKMATPFAPKMATPR954KIIA9954KIAAM(IIII)V
.end method

.method public abstract supportsSurfaceCallbacks()Z
.end method
