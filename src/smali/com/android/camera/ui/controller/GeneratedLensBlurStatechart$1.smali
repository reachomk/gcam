.class final Lcom/android/camera/ui/controller/GeneratedLensBlurStatechart$1;
.super Lcom/android/camera/ui/controller/LensBlurStatechart$Capturing;
.source "GeneratedLensBlurStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/controller/GeneratedLensBlurStatechart;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/GeneratedLensBlurStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/GeneratedLensBlurStatechart;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/camera/ui/controller/GeneratedLensBlurStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedLensBlurStatechart;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/controller/LensBlurStatechart$Capturing;-><init>(Lcom/android/camera/ui/controller/LensBlurStatechart;)V

    return-void
.end method


# virtual methods
.method public final onStopCapturing()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedLensBlurStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedLensBlurStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedLensBlurStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedLensBlurStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 25
    invoke-super {p0}, Lcom/android/camera/ui/controller/LensBlurStatechart$Capturing;->onStopCapturing()V

    .line 26
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedLensBlurStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedLensBlurStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedLensBlurStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedLensBlurStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/controller/GeneratedLensBlurStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedLensBlurStatechart;

    invoke-static {v1}, Lcom/android/camera/ui/controller/GeneratedLensBlurStatechart;->access$100(Lcom/android/camera/ui/controller/GeneratedLensBlurStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 27
    return-void
.end method
