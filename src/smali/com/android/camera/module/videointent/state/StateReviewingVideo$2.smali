.class final Lcom/android/camera/module/videointent/state/StateReviewingVideo$2;
.super Ljava/lang/Object;
.source "StateReviewingVideo.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/videointent/state/StateReviewingVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/burst/BurstA11yButtonController$Listener;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/videointent/state/StateReviewingVideo;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateReviewingVideo;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo$2;->this$0:Lcom/android/camera/module/videointent/state/StateReviewingVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 4

    .prologue
    .line 62
    .line 1065
    new-instance v1, Lcom/android/camera/module/videointent/state/StateIntentCompleted;

    iget-object v2, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo$2;->this$0:Lcom/android/camera/module/videointent/state/StateReviewingVideo;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo$2;->this$0:Lcom/android/camera/module/videointent/state/StateReviewingVideo;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->access$000(Lcom/android/camera/module/videointent/state/StateReviewingVideo;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/camera/module/videointent/state/StateIntentCompleted;-><init>(Lcom/android/camera/module/videointent/state/VideoIntentState;ZLandroid/net/Uri;)V

    .line 62
    return-object v1
.end method
