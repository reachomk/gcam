.class final Lcom/android/camera/module/video2/Video2Module$3;
.super Ljava/lang/Object;
.source "Video2Module.java"

# interfaces
.implements Lcom/android/camera/camcorder/CamcorderDeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/video2/Video2Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/video2/Video2Module;


# direct methods
.method constructor <init>(Lcom/android/camera/module/video2/Video2Module;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2Module$3;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraError()V
    .locals 2

    .prologue
    .line 208
    invoke-static {}, Lcom/android/camera/module/video2/Video2Module;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCameraError"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$3;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$800(Lcom/android/camera/module/video2/Video2Module;)V

    .line 210
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$3;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$900(Lcom/android/camera/module/video2/Video2Module;)Lcom/android/camera/error/FatalErrorHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/error/FatalErrorHandler;->onCameraOpenFailure(Ljava/lang/Throwable;)V

    .line 211
    return-void
.end method

.method public final onMediaRecorderError()V
    .locals 2

    .prologue
    .line 215
    invoke-static {}, Lcom/android/camera/module/video2/Video2Module;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onMediaRecorderError"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$3;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$800(Lcom/android/camera/module/video2/Video2Module;)V

    .line 217
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$3;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$900(Lcom/android/camera/module/video2/Video2Module;)Lcom/android/camera/error/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/error/FatalErrorHandler;->onMediaRecorderFailure()V

    .line 218
    return-void
.end method
