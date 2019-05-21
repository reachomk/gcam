.class final Lcom/android/camera/module/videointent/state/StateReviewingVideo$5;
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
.field final synthetic this$0:Lcom/android/camera/module/videointent/state/StateReviewingVideo;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateReviewingVideo;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo$5;->this$0:Lcom/android/camera/module/videointent/state/StateReviewingVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 3

    .prologue
    .line 93
    .line 1096
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo$5;->this$0:Lcom/android/camera/module/videointent/state/StateReviewingVideo;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->access$200(Lcom/android/camera/module/videointent/state/StateReviewingVideo;)V

    .line 1097
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo$5;->this$0:Lcom/android/camera/module/videointent/state/StateReviewingVideo;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->access$300(Lcom/android/camera/module/videointent/state/StateReviewingVideo;)V

    .line 1098
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo$5;->this$0:Lcom/android/camera/module/videointent/state/StateReviewingVideo;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->access$400(Lcom/android/camera/module/videointent/state/StateReviewingVideo;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getModuleUI()Lcom/android/camera/module/videointent/VideoIntentModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->changeBottomBarToVideoStart()V

    .line 1099
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo$5;->this$0:Lcom/android/camera/module/videointent/state/StateReviewingVideo;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->access$600(Lcom/android/camera/module/videointent/state/StateReviewingVideo;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getMainThread()Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/videointent/state/StateReviewingVideo$5$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo$5$1;-><init>(Lcom/android/camera/module/videointent/state/StateReviewingVideo$5;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1105
    new-instance v0, Lcom/android/camera/module/videointent/state/StateForegroundWithSurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo$5;->this$0:Lcom/android/camera/module/videointent/state/StateReviewingVideo;

    iget-object v2, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo$5;->this$0:Lcom/android/camera/module/videointent/state/StateReviewingVideo;

    .line 1106
    invoke-static {v2}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->access$700(Lcom/android/camera/module/videointent/state/StateReviewingVideo;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/module/videointent/state/StateForegroundWithSurfaceTexture;-><init>(Lcom/android/camera/module/videointent/state/VideoIntentState;Lcom/google/android/apps/camera/async/RefCountBase;)V

    .line 93
    return-object v0
.end method
