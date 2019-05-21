.class public interface abstract Lcom/android/camera/session/StackableSession;
.super Ljava/lang/Object;
.source "StackableSession.java"

# interfaces
.implements Lcom/android/camera/session/SessionBase;


# virtual methods
.method public abstract addSessionListener(Lcom/android/camera/session/CaptureSession$CaptureSessionListener;)V
.end method

.method public abstract cancel()V
.end method

.method public abstract captureStartCommitted()V
.end method

.method public abstract createStackedSession()Lcom/android/camera/session/StackedCaptureSession;
.end method

.method public abstract delete()V
.end method

.method public abstract finalizeSession()V
.end method

.method public abstract finish()V
.end method

.method public abstract focus()V
.end method

.method public abstract getProgress()I
.end method

.method public abstract getProgressMessage()Lcom/android/camera/ui/UiString;
.end method

.method public abstract getSessionType()Lcom/android/camera/session/CaptureSession$SessionType;
.end method

.method public abstract getStartTimeMillis()J
.end method

.method public abstract getTempOutputFile()Lcom/android/camera/session/TemporarySessionFile;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract selectCaptureCommand(I)V
.end method

.method public abstract setLocation(Landroid/location/Location;)V
.end method

.method public abstract setProgress(I)V
.end method

.method public abstract setProgressMessage(Lcom/android/camera/ui/UiString;)V
.end method

.method public abstract startEmpty(Lcom/android/camera/util/Size;Lcom/android/camera/session/CaptureSession$SessionType;)V
.end method

.method public abstract startSession(Landroid/net/Uri;Lcom/android/camera/ui/UiString;Lcom/android/camera/session/CaptureSession$SessionType;)V
.end method

.method public abstract startSession(Lcom/bumptech/glide/load/resource/drawable/DrawableResource;Lcom/android/camera/ui/UiString;Lcom/android/camera/session/CaptureSession$SessionType;)V
.end method

.method public abstract startSession([BLcom/android/camera/ui/UiString;Lcom/android/camera/session/CaptureSession$SessionType;)V
.end method

.method public abstract updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V
.end method

.method public abstract updateCaptureIndicatorThumbnail(Lcom/bumptech/glide/load/resource/drawable/DrawableResource;I)V
.end method

.method public abstract updatePreview()V
.end method

.method public abstract updateThumbnail(Landroid/graphics/Bitmap;)V
.end method

.method public abstract updateThumbnail(Lcom/bumptech/glide/load/resource/drawable/DrawableResource;)V
.end method
