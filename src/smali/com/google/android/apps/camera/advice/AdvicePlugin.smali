.class public interface abstract Lcom/google/android/apps/camera/advice/AdvicePlugin;
.super Ljava/lang/Object;
.source "AdvicePlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/camera/advice/AdvicePlugin$AdvicePluginSettings;
    }
.end annotation


# virtual methods
.method public abstract getPluginSettings()Lcom/google/android/apps/camera/advice/AdvicePlugin$AdvicePluginSettings;
.end method

.method public abstract onChangeDevice(Lcom/google/android/apps/camera/device/CameraId;)V
.end method

.method public abstract processPreviewFrame(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;)Z
.end method

.method public abstract setUiController(Lcom/google/android/apps/camera/advice/AdviceUiController;)V
.end method
