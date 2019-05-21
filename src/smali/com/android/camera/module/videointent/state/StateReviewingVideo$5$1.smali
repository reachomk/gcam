.class final Lcom/android/camera/module/videointent/state/StateReviewingVideo$5$1;
.super Ljava/lang/Object;
.source "StateReviewingVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/videointent/state/StateReviewingVideo$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/module/videointent/state/StateReviewingVideo$5;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateReviewingVideo$5;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo$5$1;->this$1:Lcom/android/camera/module/videointent/state/StateReviewingVideo$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo$5$1;->this$1:Lcom/android/camera/module/videointent/state/StateReviewingVideo$5;

    iget-object v0, v0, Lcom/android/camera/module/videointent/state/StateReviewingVideo$5;->this$0:Lcom/android/camera/module/videointent/state/StateReviewingVideo;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->access$500(Lcom/android/camera/module/videointent/state/StateReviewingVideo;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getVideoIntentStatechart()Lcom/android/camera/ui/controller/VideoIntentStatechart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/controller/VideoIntentStatechart;->onRetakeRequested()V

    .line 103
    return-void
.end method
