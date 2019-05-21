.class final Lcom/android/camera/ui/controller/GeneratedCaptureStatechart$4;
.super Lcom/android/camera/ui/controller/CaptureStatechart$PhotoVideoState;
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
    .line 59
    iput-object p1, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart$4;->this$0:Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/controller/CaptureStatechart$PhotoVideoState;-><init>(Lcom/android/camera/ui/controller/CaptureStatechart;)V

    return-void
.end method


# virtual methods
.method public final startLensBlur()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart$4;->this$0:Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 63
    invoke-super {p0}, Lcom/android/camera/ui/controller/CaptureStatechart$PhotoVideoState;->startLensBlur()V

    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart$4;->this$0:Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart$4;->this$0:Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;

    invoke-static {v1}, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->access$200(Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 65
    return-void
.end method

.method public final startPanorama()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart$4;->this$0:Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 70
    invoke-super {p0}, Lcom/android/camera/ui/controller/CaptureStatechart$PhotoVideoState;->startPanorama()V

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart$4;->this$0:Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart$4;->this$0:Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;

    invoke-static {v1}, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->access$300(Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 72
    return-void
.end method

.method public final startPhotoSphere()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart$4;->this$0:Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 77
    invoke-super {p0}, Lcom/android/camera/ui/controller/CaptureStatechart$PhotoVideoState;->startPhotoSphere()V

    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart$4;->this$0:Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart$4;->this$0:Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;

    invoke-static {v1}, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->access$400(Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 79
    return-void
.end method

.method public final startSlowMo()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart$4;->this$0:Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 84
    invoke-super {p0}, Lcom/android/camera/ui/controller/CaptureStatechart$PhotoVideoState;->startSlowMo()V

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart$4;->this$0:Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart$4;->this$0:Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;

    invoke-static {v1}, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->access$500(Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 86
    return-void
.end method
