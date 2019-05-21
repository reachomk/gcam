.class Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart$Visible;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "EvCompViewStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Visible"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;)V
    .locals 1

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart$Visible;->this$0:Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>([[S)V

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart$Visible;->this$0:Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;->access$200(Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 76
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart$Visible;->this$0:Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;->access$200(Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 70
    return-void
.end method

.method public showAffordance()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method
