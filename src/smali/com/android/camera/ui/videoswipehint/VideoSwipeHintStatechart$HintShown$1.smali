.class final Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart$HintShown$1;
.super Ljava/lang/Object;
.source "VideoSwipeHintStatechart.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart$HintShown;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart$HintShown;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart$HintShown;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart$HintShown$1;->this$1:Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart$HintShown;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart$HintShown$1;->this$1:Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart$HintShown;

    iget-object v0, v0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart$HintShown;->this$0:Lcom/android/camera/ui/videoswipehint/VideoSwipeHintStatechart;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->hideHint()V

    .line 52
    return-void
.end method
