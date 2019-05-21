.class final Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$1;
.super Ljava/lang/Object;
.source "Video2OpenedCamcorderDevice.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;
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
    .line 111
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$1;->this$0:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMaxZoomChanged$5132ILG_()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public final onZoomEnd()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public final onZoomValueChanged(F)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice$1;->this$0:Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->access$000(Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;)Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 115
    return-void
.end method
