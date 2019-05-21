.class final Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart$1;
.super Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart$Affordance;
.source "GeneratedEvCompVisibleStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart$1;->this$0:Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart$Affordance;-><init>(Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;)V

    return-void
.end method


# virtual methods
.method public final onScroll(F)V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart$1;->this$0:Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;->access$000(Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 30
    invoke-super {p0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart$Affordance;->onScroll(F)V

    .line 31
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart$1;->this$0:Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;->access$000(Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart$1;->this$0:Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;

    invoke-static {v1}, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;->access$100(Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 32
    return-void
.end method
