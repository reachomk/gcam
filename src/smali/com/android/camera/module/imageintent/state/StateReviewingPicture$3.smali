.class final Lcom/android/camera/module/imageintent/state/StateReviewingPicture$3;
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
.field private synthetic this$0:Lcom/android/camera/module/imageintent/state/StateReviewingPicture;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$3;->this$0:Lcom/android/camera/module/imageintent/state/StateReviewingPicture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 2

    .prologue
    .line 84
    check-cast p1, Lcom/android/camera/module/imageintent/event/EventOnTextureViewLayoutChanged;

    .line 1087
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$3;->this$0:Lcom/android/camera/module/imageintent/state/StateReviewingPicture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->access$000(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v0

    .line 1088
    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;

    .line 1089
    invoke-interface {v0}, Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools;->getResourceSurfaceTexture()Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v0

    .line 1090
    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/ResourceSurfaceTexture;

    .line 1091
    invoke-virtual {p1}, Lcom/android/camera/module/imageintent/event/EventOnTextureViewLayoutChanged;->getLayoutSize()Lcom/android/camera/util/Size;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/module/ResourceSurfaceTexture;->setPreviewLayoutSize(Lcom/android/camera/util/Size;)V

    .line 1092
    const/4 v0, 0x0

    .line 84
    return-object v0
.end method
