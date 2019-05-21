.class Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart$Hidden;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "EvCompViewStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Hidden"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;)V
    .locals 1

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart$Hidden;->this$0:Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>([[S)V

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public final enter()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart$Hidden;->this$0:Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;->access$100(Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;)Lcom/google/android/apps/camera/evcomp/EvCompView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->setDrawMarker(Z)V

    .line 49
    return-void
.end method

.method public showAffordance()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart$Hidden;->this$0:Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;->access$200(Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 55
    return-void
.end method
