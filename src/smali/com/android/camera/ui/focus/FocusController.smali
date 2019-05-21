.class public interface abstract Lcom/android/camera/ui/focus/FocusController;
.super Ljava/lang/Object;
.source "FocusController.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Lcom/google/android/apps/camera/aaa/AfStateTransition;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract clearFocusIndicator()V
.end method

.method public abstract configurePreviewDimensions(Landroid/graphics/RectF;)V
.end method

.method public abstract setAutoFocusSupported(Z)V
.end method

.method public abstract setFocusRatio(F)V
.end method

.method public abstract setPassiveFocusEnabled(Z)V
.end method

.method public abstract showActiveFocusAt(II)V
.end method

.method public abstract showFocusLockCancel()V
.end method

.method public abstract showFocusLockConfirm()V
.end method

.method public abstract showFocusLockHoldAt(II)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract showPassiveFocusAt(II)V
.end method

.method public abstract showPassiveFocusAtCenter()V
.end method
