.class final Lcom/android/camera/ui/controller/GeneratedVideoTorchStatechart$2;
.super Lcom/android/camera/ui/controller/VideoTorchStatechart$Off;
.source "GeneratedVideoTorchStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/controller/GeneratedVideoTorchStatechart;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/GeneratedVideoTorchStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/GeneratedVideoTorchStatechart;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/camera/ui/controller/GeneratedVideoTorchStatechart$2;->this$0:Lcom/android/camera/ui/controller/GeneratedVideoTorchStatechart;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/controller/VideoTorchStatechart$Off;-><init>(Lcom/android/camera/ui/controller/VideoTorchStatechart;)V

    return-void
.end method


# virtual methods
.method public final setOn()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoTorchStatechart$2;->this$0:Lcom/android/camera/ui/controller/GeneratedVideoTorchStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedVideoTorchStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedVideoTorchStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 46
    invoke-super {p0}, Lcom/android/camera/ui/controller/VideoTorchStatechart$Off;->setOn()V

    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoTorchStatechart$2;->this$0:Lcom/android/camera/ui/controller/GeneratedVideoTorchStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedVideoTorchStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedVideoTorchStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/controller/GeneratedVideoTorchStatechart$2;->this$0:Lcom/android/camera/ui/controller/GeneratedVideoTorchStatechart;

    invoke-static {v1}, Lcom/android/camera/ui/controller/GeneratedVideoTorchStatechart;->access$200(Lcom/android/camera/ui/controller/GeneratedVideoTorchStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 48
    return-void
.end method
