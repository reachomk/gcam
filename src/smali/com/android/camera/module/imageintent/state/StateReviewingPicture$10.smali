.class final Lcom/android/camera/module/imageintent/state/StateReviewingPicture$10;
.super Ljava/lang/Object;
.source "StateReviewingPicture.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSessionManager$SessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/state/StateReviewingPicture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/imageintent/state/StateReviewingPicture;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateReviewingPicture;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$10;->this$0:Lcom/android/camera/module/imageintent/state/StateReviewingPicture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSessionCanceled(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public final onSessionCaptureIndicatorUpdate(Landroid/graphics/Bitmap;I)V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public final onSessionDone(Landroid/net/Uri;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    return-void
.end method

.method public final onSessionFailed(Landroid/net/Uri;Lcom/android/camera/ui/UiString;Z)V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public final onSessionFocused(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method public final onSessionPictureDataUpdate([BI)V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture$10;->this$0:Lcom/android/camera/module/imageintent/state/StateReviewingPicture;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;->getStateMachine()Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/event/EventPictureCompressed;

    invoke-direct {v1, p1, p2}, Lcom/android/camera/module/imageintent/event/EventPictureCompressed;-><init>([BI)V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 237
    return-void
.end method

.method public final onSessionProgress(Landroid/net/Uri;I)V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public final onSessionProgressText(Landroid/net/Uri;Lcom/android/camera/ui/UiString;)V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public final onSessionQueued(Landroid/net/Uri;Lcom/android/camera/session/CaptureSession$SessionType;)V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public final onSessionThumbnailUpdate(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public final onSessionUpdated(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 243
    return-void
.end method
