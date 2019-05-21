.class final Lcom/android/camera/module/imageintent/state/StateReviewingPicture$6;
.super Ljava/lang/Object;
.source "StateReviewingPicture.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/state/StateReviewingPicture;
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
.field final synthetic this$0:Lcom/android/camera/module/imageintent/state/StateReviewingPicture;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$6;->this$0:Lcom/android/camera/module/imageintent/state/StateReviewingPicture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 3

    .prologue
    .line 127
    .line 1130
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$6;->this$0:Lcom/android/camera/module/imageintent/state/StateReviewingPicture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->access$400(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    .line 1131
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getMainThread()Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$6$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$6$1;-><init>(Lcom/android/camera/module/imageintent/state/StateReviewingPicture$6;)V

    .line 1132
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1139
    new-instance v1, Lcom/android/camera/module/imageintent/state/StateForegroundWithSurfaceTexture;

    iget-object v2, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$6;->this$0:Lcom/android/camera/module/imageintent/state/StateReviewingPicture;

    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$6;->this$0:Lcom/android/camera/module/imageintent/state/StateReviewingPicture;

    .line 1141
    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->access$000(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;->getResourceSurfaceTexture()Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/camera/module/imageintent/state/StateForegroundWithSurfaceTexture;-><init>(Lcom/android/camera/module/imageintent/state/ImageIntentState;Lcom/google/android/apps/camera/async/RefCountBase;)V

    .line 127
    return-object v1
.end method
