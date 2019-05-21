.class final Lcom/android/camera/ui/controller/GeneratedCaptureStatechart$1;
.super Lcom/android/camera/ui/controller/CaptureStatechart$LensBlurState;
.source "GeneratedCaptureStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;-><init>(Lcom/android/camera/ui/controller/LensBlurStatechart;Lcom/android/camera/ui/controller/PanoramaStatechart;Lcom/android/camera/ui/controller/PhotoSphereStatechart;Lcom/android/camera/ui/controller/PhotoVideoStatechart;Lcom/android/camera/ui/controller/CameraFacingStatechart;Lcom/android/camera/ui/controller/HfrVideoStatechart;Lcom/android/camera/ui/controller/VideoTorchStatechart;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/controller/CaptureStatechart$LensBlurState;-><init>(Lcom/android/camera/ui/controller/CaptureStatechart;)V

    return-void
.end method


# virtual methods
.method public final exitToyBoxMode()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 36
    invoke-super {p0}, Lcom/android/camera/ui/controller/CaptureStatechart$LensBlurState;->exitToyBoxMode()V

    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;

    invoke-static {v1}, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->access$100(Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 38
    return-void
.end method
