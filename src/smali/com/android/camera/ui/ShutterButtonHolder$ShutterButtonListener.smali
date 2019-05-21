.class public interface abstract Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;
.super Ljava/lang/Object;
.source "ShutterButtonHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ShutterButtonHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ShutterButtonListener"
.end annotation


# virtual methods
.method public abstract onShutterButtonClick()V
.end method

.method public abstract onShutterButtonFocus(Z)V
.end method

.method public abstract onShutterButtonLongPressRelease()V
.end method

.method public abstract onShutterButtonLongPressed()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onShutterTouch(Lcom/google/android/apps/camera/uiutils/TouchCoordinate;)V
.end method
