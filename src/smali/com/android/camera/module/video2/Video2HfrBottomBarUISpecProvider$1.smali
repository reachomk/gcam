.class final Lcom/android/camera/module/video2/Video2HfrBottomBarUISpecProvider$1;
.super Ljava/lang/Object;
.source "Video2HfrBottomBarUISpecProvider.java"

# interfaces
.implements Lcom/android/camera/ui/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/video2/Video2HfrBottomBarUISpecProvider;->provideBottomBarUISpec()Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/video2/Video2HfrBottomBarUISpecProvider;


# direct methods
.method constructor <init>(Lcom/android/camera/module/video2/Video2HfrBottomBarUISpecProvider;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2HfrBottomBarUISpecProvider$1;->this$0:Lcom/android/camera/module/video2/Video2HfrBottomBarUISpecProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 3

    .prologue
    .line 54
    invoke-static {}, Lcom/android/camera/module/video2/Video2HfrBottomBarUISpecProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "hfrModeCallback state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_120:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    .line 57
    if-nez p1, :cond_1

    .line 58
    sget-object v0, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_120:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    .line 63
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2HfrBottomBarUISpecProvider$1;->this$0:Lcom/android/camera/module/video2/Video2HfrBottomBarUISpecProvider;

    iget-object v1, v1, Lcom/android/camera/module/video2/Video2HfrBottomBarUISpecProvider;->bottomBarUICallback:Lcom/android/camera/module/BottomBarUICallback;

    invoke-interface {v1, v0}, Lcom/android/camera/module/BottomBarUICallback;->onHfrModeButtonClicked(Lcom/android/camera/camcorder/CamcorderCaptureRate;)V

    .line 64
    return-void

    .line 59
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 60
    sget-object v0, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_240:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    goto :goto_0
.end method
