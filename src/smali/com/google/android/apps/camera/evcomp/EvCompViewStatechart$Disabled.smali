.class Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart$Disabled;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "EvCompViewStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Disabled"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;)V
    .locals 1

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart$Disabled;->this$0:Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>([[S)V

    return-void
.end method


# virtual methods
.method public enable(IIF)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart$Disabled;->this$0:Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;->access$000(Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;)Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;->setEvSettings(IIF)V

    .line 38
    return-void
.end method
