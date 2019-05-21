.class Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart$Affordance;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "EvCompVisibleStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Affordance"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;)V
    .locals 1

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart$Affordance;->this$0:Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>([[I)V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart$Affordance;->this$0:Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;->access$100(Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;)V

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart$Affordance;->this$0:Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;->access$200(Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;)Lcom/google/android/apps/camera/evcomp/EvCompView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->setDrawMarker(Z)V

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart$Affordance;->this$0:Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;->access$200(Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;)Lcom/google/android/apps/camera/evcomp/EvCompView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/evcomp/EvCompView;->setDrawRuler(Z)V

    .line 67
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart$Affordance;->this$0:Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;->access$200(Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;)Lcom/google/android/apps/camera/evcomp/EvCompView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/evcomp/EvCompView;->setDrawAffordance(Z)V

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart$Affordance;->this$0:Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;->access$302(Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;F)F

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart$Affordance;->this$0:Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;->access$400(Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;)V

    .line 70
    return-void
.end method

.method public final exit()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart$Affordance;->this$0:Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;->access$500(Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;)V

    .line 75
    return-void
.end method

.method public onScroll(F)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart$Affordance;->this$0:Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;

    invoke-static {v0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;->access$600(Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;F)V

    .line 81
    return-void
.end method
