.class public interface abstract Lcom/android/camera/error/FatalErrorHandler;
.super Ljava/lang/Object;
.source "FatalErrorHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/error/FatalErrorHandler$Reason;
    }
.end annotation


# virtual methods
.method public abstract onCameraDisabledFailure()V
.end method

.method public abstract onCameraOpenFailure(Ljava/lang/Throwable;)V
.end method

.method public abstract onCameraReconnectFailure()V
.end method

.method public abstract onGenericCameraAccessFailure()V
.end method

.method public abstract onMediaRecorderFailure()V
.end method

.method public abstract onMediaStorageFailure()V
.end method
