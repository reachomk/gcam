.class final Lcom/android/camera/module/videointent/state/StateReviewingVideo$7;
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
    .line 124
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo$7;->this$0:Lcom/android/camera/module/videointent/state/StateReviewingVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 3

    .prologue
    .line 124
    check-cast p1, Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureAvailable;

    .line 1127
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo$7;->this$0:Lcom/android/camera/module/videointent/state/StateReviewingVideo;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->access$700(Lcom/android/camera/module/videointent/state/StateReviewingVideo;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->close()V

    .line 1128
    iget-object v1, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo$7;->this$0:Lcom/android/camera/module/videointent/state/StateReviewingVideo;

    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReviewingVideo$7;->this$0:Lcom/android/camera/module/videointent/state/StateReviewingVideo;

    .line 1129
    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->access$900(Lcom/android/camera/module/videointent/state/StateReviewingVideo;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    .line 1130
    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getResourceSurfaceTextureFactory()Lcom/android/camera/module/ResourceSurfaceTextureFactory;

    move-result-object v0

    .line 1131
    invoke-virtual {p1}, Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureAvailable;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/module/ResourceSurfaceTextureFactory;->create(Landroid/graphics/SurfaceTexture;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v0

    .line 1128
    invoke-static {v1, v0}, Lcom/android/camera/module/videointent/state/StateReviewingVideo;->access$702(Lcom/android/camera/module/videointent/state/StateReviewingVideo;Lcom/google/android/apps/camera/async/RefCountBase;)Lcom/google/android/apps/camera/async/RefCountBase;

    .line 1132
    const/4 v0, 0x0

    .line 124
    return-object v0
.end method
