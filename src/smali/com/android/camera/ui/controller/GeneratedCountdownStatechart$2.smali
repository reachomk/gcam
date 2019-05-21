.class final Lcom/android/camera/ui/controller/GeneratedCountdownStatechart$2;
.super Lcom/android/camera/ui/controller/CountdownStatechart$Ready;
.source "GeneratedCountdownStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/camera/ui/controller/GeneratedCountdownStatechart$2;->this$0:Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;

    invoke-direct {p0}, Lcom/android/camera/ui/controller/CountdownStatechart$Ready;-><init>()V

    return-void
.end method


# virtual methods
.method public final startCountdown()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCountdownStatechart$2;->this$0:Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 37
    invoke-super {p0}, Lcom/android/camera/ui/controller/CountdownStatechart$Ready;->startCountdown()V

    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCountdownStatechart$2;->this$0:Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/controller/GeneratedCountdownStatechart$2;->this$0:Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;

    invoke-static {v1}, Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;->access$200(Lcom/android/camera/ui/controller/GeneratedCountdownStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 39
    return-void
.end method
