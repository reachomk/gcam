.class public interface abstract Lcom/android/camera/session/CaptureSessionManager$SessionListener;
.super Ljava/lang/Object;
.source "CaptureSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/session/CaptureSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SessionListener"
.end annotation


# virtual methods
.method public abstract onSessionCanceled(Landroid/net/Uri;)V
.end method

.method public abstract onSessionCaptureIndicatorUpdate(Landroid/graphics/Bitmap;I)V
.end method

.method public abstract onSessionDone(Landroid/net/Uri;Ljava/util/List;)V
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
.end method

.method public abstract onSessionFailed(Landroid/net/Uri;Lcom/android/camera/ui/UiString;Z)V
.end method

.method public abstract onSessionFocused(Landroid/net/Uri;)V
.end method

.method public abstract onSessionPictureDataUpdate([BI)V
.end method

.method public abstract onSessionProgress(Landroid/net/Uri;I)V
.end method

.method public abstract onSessionProgressText(Landroid/net/Uri;Lcom/android/camera/ui/UiString;)V
.end method

.method public abstract onSessionQueued(Landroid/net/Uri;Lcom/android/camera/session/CaptureSession$SessionType;)V
.end method

.method public abstract onSessionThumbnailUpdate(Landroid/graphics/Bitmap;)V
.end method

.method public abstract onSessionUpdated(Landroid/net/Uri;)V
.end method
