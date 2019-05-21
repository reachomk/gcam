.class final Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart$1;
.super Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart$Disabled;
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
    .line 23
    iput-object p1, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart$1;->this$0:Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart$Disabled;-><init>(Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;)V

    return-void
.end method


# virtual methods
.method public final enable(IIF)V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart$1;->this$0:Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->access$000(Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 27
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart$Disabled;->enable(IIF)V

    .line 28
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart$1;->this$0:Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->access$000(Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart$1;->this$0:Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;

    invoke-static {v1}, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;->access$100(Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 29
    return-void
.end method
