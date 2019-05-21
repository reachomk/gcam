.class final Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart$2;
.super Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart$Hidden;
.source "GeneratedEvCompViewStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;-><init>(Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart$2;->this$0:Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart$Hidden;-><init>(Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;)V

    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart$2;->this$0:Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->access$000(Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 36
    invoke-super {p0}, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart$Hidden;->disable()V

    .line 37
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart$2;->this$0:Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->access$000(Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart$2;->this$0:Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;

    invoke-static {v1}, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->access$200(Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 38
    return-void
.end method

.method public final showAffordance()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart$2;->this$0:Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->access$000(Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 43
    invoke-super {p0}, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart$Hidden;->showAffordance()V

    .line 44
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart$2;->this$0:Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->access$000(Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart$2;->this$0:Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;

    invoke-static {v1}, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->access$300(Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 45
    return-void
.end method
