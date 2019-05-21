.class final Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$3;
.super Ljava/lang/Object;
.source "Video2OpenedCamcorderDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;


# direct methods
.method constructor <init>(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$3;->this$0:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$3;->this$0:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->access$100(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->camcorderClosed()V

    .line 253
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$3;->this$0:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->access$200(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusController;->clearFocusIndicator()V

    .line 254
    return-void
.end method
