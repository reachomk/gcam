.class final Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart$3;
.super Lcom/android/camera/ui/controller/VideoIntentStatechart$Review;
.source "GeneratedVideoIntentStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart$3;->this$0:Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;

    invoke-direct {p0}, Lcom/android/camera/ui/controller/VideoIntentStatechart$Review;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRetakeRequested()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart$3;->this$0:Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 53
    invoke-super {p0}, Lcom/android/camera/ui/controller/VideoIntentStatechart$Review;->onRetakeRequested()V

    .line 54
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart$3;->this$0:Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart$3;->this$0:Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;

    invoke-static {v1}, Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;->access$200(Lcom/android/camera/ui/controller/GeneratedVideoIntentStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 55
    return-void
.end method
